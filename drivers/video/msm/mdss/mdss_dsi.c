/* Copyright (c) 2012-2014, The Linux Foundation. All rights reserved.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 and
 * only version 2 as published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 */

#include <linux/module.h>
#include <linux/interrupt.h>
#include <linux/spinlock.h>
#include <linux/delay.h>
#include <linux/io.h>
#include <linux/of_device.h>
#include <linux/of_gpio.h>
#include <linux/gpio.h>
#include <linux/err.h>
#include <linux/regulator/consumer.h>

#include "mdss.h"
#include "mdss_panel.h"
#include "mdss_dsi.h"
#include "mdss_debug.h"

/** ZTE_MODIFY chenfei added for LCD driver 2013/05/21 */ 
#include <linux/proc_fs.h>
#include <linux/seq_file.h>
#include <asm/uaccess.h>
/** ZTE_MODIFY end chenfei */ 

static unsigned char *mdss_dsi_base;

/** ZTE_MODIFY niugang modify lcd backlight and ce mutex **/
extern struct mutex *ce_lock;
/** ZTE_MODIFY end **/

static int mdss_dsi_regulator_init(struct platform_device *pdev)
{
	struct mdss_dsi_ctrl_pdata *ctrl_pdata = NULL;

	if (!pdev) {
		pr_err("%s: invalid input\n", __func__);
		return -EINVAL;
	}

	ctrl_pdata = platform_get_drvdata(pdev);
	if (!ctrl_pdata) {
		pr_err("%s: invalid driver data\n", __func__);
		return -EINVAL;
	}

	return msm_dss_config_vreg(&pdev->dev,
			ctrl_pdata->power_data.vreg_config,
			ctrl_pdata->power_data.num_vreg, 1);
}

static int mdss_dsi_panel_power_on(struct mdss_panel_data *pdata, int enable)
{
	int ret;
	struct mdss_dsi_ctrl_pdata *ctrl_pdata = NULL;

	if (pdata == NULL) {
		pr_err("%s: Invalid input data\n", __func__);
		ret = -EINVAL;
		goto error;
	}

	ctrl_pdata = container_of(pdata, struct mdss_dsi_ctrl_pdata,
				panel_data);
	pr_debug("%s: enable=%d\n", __func__, enable);

	if (enable) {
		ret = msm_dss_enable_vreg(
			ctrl_pdata->power_data.vreg_config,
			ctrl_pdata->power_data.num_vreg, 1);
		if (ret) {
			pr_err("%s:Failed to enable vregs.rc=%d\n",
				__func__, ret);
			goto error;
		}

		if (pdata->panel_info.panel_power_on == 0)
			mdss_dsi_panel_reset(pdata, 1);

	} else {

		mdss_dsi_panel_reset(pdata, 0);

		ret = msm_dss_enable_vreg(
			ctrl_pdata->power_data.vreg_config,
			ctrl_pdata->power_data.num_vreg, 0);
		if (ret) {
			pr_err("%s: Failed to disable vregs.rc=%d\n",
				__func__, ret);
		}
	}
error:
	return ret;
}

static void mdss_dsi_put_dt_vreg_data(struct device *dev,
	struct dss_module_power *module_power)
{
	if (!module_power) {
		pr_err("%s: invalid input\n", __func__);
		return;
	}

	if (module_power->vreg_config) {
		devm_kfree(dev, module_power->vreg_config);
		module_power->vreg_config = NULL;
	}
	module_power->num_vreg = 0;
}

static int mdss_dsi_get_dt_vreg_data(struct device *dev,
	struct dss_module_power *mp)
{
	int i = 0, rc = 0;
	u32 tmp = 0;
	struct device_node *of_node = NULL, *supply_node = NULL;

	if (!dev || !mp) {
		pr_err("%s: invalid input\n", __func__);
		rc = -EINVAL;
		goto error;
	}

	of_node = dev->of_node;

	mp->num_vreg = 0;
	for_each_child_of_node(of_node, supply_node) {
		if (!strncmp(supply_node->name, "qcom,platform-supply-entry",
						26))
			++mp->num_vreg;
	}
	if (mp->num_vreg == 0) {
		pr_debug("%s: no vreg\n", __func__);
		goto novreg;
	} else {
		pr_debug("%s: vreg found. count=%d\n", __func__, mp->num_vreg);
	}

	mp->vreg_config = devm_kzalloc(dev, sizeof(struct dss_vreg) *
		mp->num_vreg, GFP_KERNEL);
	if (!mp->vreg_config) {
		pr_err("%s: can't alloc vreg mem\n", __func__);
		rc = -ENOMEM;
		goto error;
	}

	for_each_child_of_node(of_node, supply_node) {
		if (!strncmp(supply_node->name, "qcom,platform-supply-entry",
						26)) {
			const char *st = NULL;
			/* vreg-name */
			rc = of_property_read_string(supply_node,
				"qcom,supply-name", &st);
			if (rc) {
				pr_err("%s: error reading name. rc=%d\n",
					__func__, rc);
				goto error;
			}
			snprintf(mp->vreg_config[i].vreg_name,
				ARRAY_SIZE((mp->vreg_config[i].vreg_name)),
				"%s", st);
			/* vreg-min-voltage */
			rc = of_property_read_u32(supply_node,
				"qcom,supply-min-voltage", &tmp);
			if (rc) {
				pr_err("%s: error reading min volt. rc=%d\n",
					__func__, rc);
				goto error;
			}
			mp->vreg_config[i].min_voltage = tmp;

			/* vreg-max-voltage */
			rc = of_property_read_u32(supply_node,
				"qcom,supply-max-voltage", &tmp);
			if (rc) {
				pr_err("%s: error reading max volt. rc=%d\n",
					__func__, rc);
				goto error;
			}
			mp->vreg_config[i].max_voltage = tmp;

			/* enable-load */
			rc = of_property_read_u32(supply_node,
				"qcom,supply-enable-load", &tmp);
			if (rc) {
				pr_err("%s: error reading enable load. rc=%d\n",
					__func__, rc);
				goto error;
			}
			mp->vreg_config[i].enable_load = tmp;

			/* disable-load */
			rc = of_property_read_u32(supply_node,
				"qcom,supply-disable-load", &tmp);
			if (rc) {
				pr_err("%s: error reading disable load. rc=%d\n",
					__func__, rc);
				goto error;
			}
			mp->vreg_config[i].disable_load = tmp;

			/* pre-sleep */
			rc = of_property_read_u32(supply_node,
				"qcom,supply-pre-on-sleep", &tmp);
			if (rc) {
				pr_debug("%s: error reading supply pre sleep value. rc=%d\n",
					__func__, rc);
			}
			mp->vreg_config[i].pre_on_sleep = (!rc ? tmp : 0);

			rc = of_property_read_u32(supply_node,
				"qcom,supply-pre-off-sleep", &tmp);
			if (rc) {
				pr_debug("%s: error reading supply pre sleep value. rc=%d\n",
					__func__, rc);
			}
			mp->vreg_config[i].pre_off_sleep = (!rc ? tmp : 0);

			/* post-sleep */
			rc = of_property_read_u32(supply_node,
				"qcom,supply-post-on-sleep", &tmp);
			if (rc) {
				pr_debug("%s: error reading supply post sleep value. rc=%d\n",
					__func__, rc);
			}
			mp->vreg_config[i].post_on_sleep = (!rc ? tmp : 0);

			rc = of_property_read_u32(supply_node,
				"qcom,supply-post-off-sleep", &tmp);
			if (rc) {
				pr_debug("%s: error reading supply post sleep value. rc=%d\n",
					__func__, rc);
			}
			mp->vreg_config[i].post_off_sleep = (!rc ? tmp : 0);

			pr_debug("%s: %s min=%d, max=%d, enable=%d, disable=%d, preonsleep=%d, postonsleep=%d, preoffsleep=%d, postoffsleep=%d\n",
				__func__,
				mp->vreg_config[i].vreg_name,
				mp->vreg_config[i].min_voltage,
				mp->vreg_config[i].max_voltage,
				mp->vreg_config[i].enable_load,
				mp->vreg_config[i].disable_load,
				mp->vreg_config[i].pre_on_sleep,
				mp->vreg_config[i].post_on_sleep,
				mp->vreg_config[i].pre_off_sleep,
				mp->vreg_config[i].post_off_sleep
				);
			++i;
		}
	}

	return rc;

error:
	if (mp->vreg_config) {
		devm_kfree(dev, mp->vreg_config);
		mp->vreg_config = NULL;
	}
novreg:
	mp->num_vreg = 0;

	return rc;
}

static int mdss_dsi_get_panel_cfg(char *panel_cfg)
{
	int rc;
	struct mdss_panel_cfg *pan_cfg = NULL;

	if (!panel_cfg)
		return MDSS_PANEL_INTF_INVALID;

	pan_cfg = mdss_panel_intf_type(MDSS_PANEL_INTF_DSI);
	if (IS_ERR(pan_cfg)) {
		return PTR_ERR(pan_cfg);
	} else if (!pan_cfg) {
		panel_cfg[0] = 0;
		return 0;
	}

	pr_debug("%s:%d: cfg:[%s]\n", __func__, __LINE__,
		 pan_cfg->arg_cfg);
	rc = strlcpy(panel_cfg, pan_cfg->arg_cfg,
		     sizeof(pan_cfg->arg_cfg));
	return rc;
}

static int mdss_dsi_off(struct mdss_panel_data *pdata)
{
	int ret = 0;
	struct mdss_dsi_ctrl_pdata *ctrl_pdata = NULL;
	struct mdss_panel_info *panel_info = NULL;

	if (pdata == NULL) {
		pr_err("%s: Invalid input data\n", __func__);
		return -EINVAL;
	}

	if (!pdata->panel_info.panel_power_on) {
		pr_warn("%s:%d Panel already off.\n", __func__, __LINE__);
		return -EPERM;
	}

	pdata->panel_info.panel_power_on = 0;

	ctrl_pdata = container_of(pdata, struct mdss_dsi_ctrl_pdata,
				panel_data);

	panel_info = &ctrl_pdata->panel_data.panel_info;
	pr_debug("%s+: ctrl=%p ndx=%d\n", __func__,
				ctrl_pdata, ctrl_pdata->ndx);

	if (pdata->panel_info.type == MIPI_CMD_PANEL)
		mdss_dsi_clk_ctrl(ctrl_pdata, 1);

	/* disable DSI controller */
	mdss_dsi_controller_cfg(0, pdata);

	/* disable DSI phy */
	mdss_dsi_phy_disable(ctrl_pdata);

	mdss_dsi_clk_ctrl(ctrl_pdata, 0);

	ret = mdss_dsi_panel_power_on(pdata, 0);
	if (ret) {
		pr_err("%s: Panel power off failed\n", __func__);
		return ret;
	}

	if (panel_info->dynamic_fps
	    && (panel_info->dfps_update == DFPS_SUSPEND_RESUME_MODE)
	    && (panel_info->new_fps != panel_info->mipi.frame_rate))
		panel_info->mipi.frame_rate = panel_info->new_fps;

	pr_debug("%s-:\n", __func__);

	return ret;
}

int mdss_dsi_on(struct mdss_panel_data *pdata)
{
	int ret = 0;
	u32 clk_rate;
	struct mdss_panel_info *pinfo;
	struct mipi_panel_info *mipi;
	u32 hbp, hfp, vbp, vfp, hspw, vspw, width, height;
	u32 ystride, bpp, data, dst_bpp;
	u32 dummy_xres, dummy_yres;
	struct mdss_dsi_ctrl_pdata *ctrl_pdata = NULL;
	u32 hsync_period, vsync_period;

	if (pdata == NULL) {
		pr_err("%s: Invalid input data\n", __func__);
		return -EINVAL;
	}

	if (pdata->panel_info.panel_power_on) {
		pr_warn("%s:%d Panel already on.\n", __func__, __LINE__);
		return 0;
	}

	ctrl_pdata = container_of(pdata, struct mdss_dsi_ctrl_pdata,
				panel_data);

	pr_info("%s+: ctrl=%p ndx=%d\n",
				__func__, ctrl_pdata, ctrl_pdata->ndx);

	pinfo = &pdata->panel_info;

	ret = msm_dss_enable_vreg(ctrl_pdata->power_data.vreg_config,
				ctrl_pdata->power_data.num_vreg, 1);
	if (ret) {
		pr_err("%s:Failed to enable vregs. rc=%d\n", __func__, ret);
		return ret;
	}

	pdata->panel_info.panel_power_on = 1;

	if (!pdata->panel_info.mipi.lp11_init)
		mdss_dsi_panel_reset(pdata, 1);

	ret = mdss_dsi_bus_clk_start(ctrl_pdata);
	if (ret) {
		pr_err("%s: failed to enable bus clocks. rc=%d\n", __func__,
			ret);
		mdss_dsi_panel_power_on(pdata, 0);
		pdata->panel_info.panel_power_on = 0;
		return ret;
	}

	mdss_dsi_phy_sw_reset((ctrl_pdata->ctrl_base));
	mdss_dsi_phy_init(pdata);
	mdss_dsi_bus_clk_stop(ctrl_pdata);

	mdss_dsi_clk_ctrl(ctrl_pdata, 1);

	clk_rate = pdata->panel_info.clk_rate;
	clk_rate = min(clk_rate, pdata->panel_info.clk_max);

	dst_bpp = pdata->panel_info.fbc.enabled ?
		(pdata->panel_info.fbc.target_bpp) : (pinfo->bpp);

	hbp = mult_frac(pdata->panel_info.lcdc.h_back_porch, dst_bpp,
			pdata->panel_info.bpp);
	hfp = mult_frac(pdata->panel_info.lcdc.h_front_porch, dst_bpp,
			pdata->panel_info.bpp);
	vbp = mult_frac(pdata->panel_info.lcdc.v_back_porch, dst_bpp,
			pdata->panel_info.bpp);
	vfp = mult_frac(pdata->panel_info.lcdc.v_front_porch, dst_bpp,
			pdata->panel_info.bpp);
	hspw = mult_frac(pdata->panel_info.lcdc.h_pulse_width, dst_bpp,
			pdata->panel_info.bpp);
	vspw = pdata->panel_info.lcdc.v_pulse_width;
	width = mult_frac(pdata->panel_info.xres, dst_bpp,
			pdata->panel_info.bpp);
	height = pdata->panel_info.yres;

	if (pdata->panel_info.type == MIPI_VIDEO_PANEL) {
		dummy_xres = pdata->panel_info.lcdc.xres_pad;
		dummy_yres = pdata->panel_info.lcdc.yres_pad;
	}

	vsync_period = vspw + vbp + height + dummy_yres + vfp;
	hsync_period = hspw + hbp + width + dummy_xres + hfp;

	mipi  = &pdata->panel_info.mipi;
	if (pdata->panel_info.type == MIPI_VIDEO_PANEL) {
		MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x24,
			((hspw + hbp + width + dummy_xres) << 16 |
			(hspw + hbp)));
		MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x28,
			((vspw + vbp + height + dummy_yres) << 16 |
			(vspw + vbp)));
		MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x2C,
				((vsync_period - 1) << 16)
				| (hsync_period - 1));

		MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x30, (hspw << 16));
		MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x34, 0);
		MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x38, (vspw << 16));

	} else {		/* command mode */
		if (mipi->dst_format == DSI_CMD_DST_FORMAT_RGB888)
			bpp = 3;
		else if (mipi->dst_format == DSI_CMD_DST_FORMAT_RGB666)
			bpp = 3;
		else if (mipi->dst_format == DSI_CMD_DST_FORMAT_RGB565)
			bpp = 2;
		else
			bpp = 3;	/* Default format set to RGB888 */

		ystride = width * bpp + 1;

		/* DSI_COMMAND_MODE_MDP_STREAM_CTRL */
		data = (ystride << 16) | (mipi->vc << 8) | DTYPE_DCS_LWRITE;
		MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x60, data);
		MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x58, data);

		/* DSI_COMMAND_MODE_MDP_STREAM_TOTAL */
		data = height << 16 | width;
		MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x64, data);
		MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x5C, data);
	}

	mdss_dsi_sw_reset(pdata);
	mdss_dsi_host_init(mipi, pdata);

	/*
	 * Issue hardware reset line after enabling the DSI clocks and data
	 * data lanes for LP11 init
	 */
	if (pdata->panel_info.mipi.lp11_init)
		mdss_dsi_panel_reset(pdata, 1);

	if (pdata->panel_info.mipi.init_delay)
		usleep(pdata->panel_info.mipi.init_delay);

	if (mipi->force_clk_lane_hs) {
		u32 tmp;

		tmp = MIPI_INP((ctrl_pdata->ctrl_base) + 0xac);
		tmp |= (1<<28);
		MIPI_OUTP((ctrl_pdata->ctrl_base) + 0xac, tmp);
		wmb();
	}

	if (pdata->panel_info.type == MIPI_CMD_PANEL)
		mdss_dsi_clk_ctrl(ctrl_pdata, 0);

	pr_debug("%s-:\n", __func__);
	return 0;
}

static int mdss_dsi_unblank(struct mdss_panel_data *pdata)
{
	int ret = 0;
	struct mipi_panel_info *mipi;
	struct mdss_dsi_ctrl_pdata *ctrl_pdata = NULL;

	pr_debug("%s+:\n", __func__);

	if (pdata == NULL) {
		pr_err("%s: Invalid input data\n", __func__);
		return -EINVAL;
	}

	ctrl_pdata = container_of(pdata, struct mdss_dsi_ctrl_pdata,
				panel_data);
	mipi  = &pdata->panel_info.mipi;

	if (!(ctrl_pdata->ctrl_state & CTRL_STATE_PANEL_INIT)) {
		ret = ctrl_pdata->on(pdata);
		if (ret) {
			pr_err("%s: unable to initialize the panel\n",
							__func__);
			return ret;
		}
		ctrl_pdata->ctrl_state |= CTRL_STATE_PANEL_INIT;
	}

	if (pdata->panel_info.type == MIPI_CMD_PANEL) {
		if (mipi->vsync_enable && mipi->hw_vsync_mode
			&& gpio_is_valid(ctrl_pdata->disp_te_gpio)) {
				mdss_dsi_set_tear_on(ctrl_pdata);
		}
	}

	pr_debug("%s-:\n", __func__);

	return ret;
}

static int mdss_dsi_blank(struct mdss_panel_data *pdata)
{
	int ret = 0;
	struct mipi_panel_info *mipi;
	struct mdss_dsi_ctrl_pdata *ctrl_pdata = NULL;

	pr_debug("%s+:\n", __func__);

	if (pdata == NULL) {
		pr_err("%s: Invalid input data\n", __func__);
		return -EINVAL;
	}

	ctrl_pdata = container_of(pdata, struct mdss_dsi_ctrl_pdata,
				panel_data);
	mipi = &pdata->panel_info.mipi;

	mdss_dsi_op_mode_config(DSI_CMD_MODE, pdata);

	if (pdata->panel_info.type == MIPI_CMD_PANEL) {
		if (mipi->vsync_enable && mipi->hw_vsync_mode
			&& gpio_is_valid(ctrl_pdata->disp_te_gpio)) {
			mdss_dsi_set_tear_off(ctrl_pdata);
		}
	}

	if (ctrl_pdata->ctrl_state & CTRL_STATE_PANEL_INIT) {
		ret = ctrl_pdata->off(pdata);
		if (ret) {
			pr_err("%s: Panel OFF failed\n", __func__);
			return ret;
		}
		ctrl_pdata->ctrl_state &= ~CTRL_STATE_PANEL_INIT;
	}
	pr_debug("%s-:End\n", __func__);
	return ret;
}

int mdss_dsi_cont_splash_on(struct mdss_panel_data *pdata)
{
	int ret = 0;
	struct mipi_panel_info *mipi;
	struct mdss_dsi_ctrl_pdata *ctrl_pdata = NULL;

	pr_info("%s:%d DSI on for continuous splash.\n", __func__, __LINE__);

	if (pdata == NULL) {
		pr_err("%s: Invalid input data\n", __func__);
		return -EINVAL;
	}

	mipi = &pdata->panel_info.mipi;

	ctrl_pdata = container_of(pdata, struct mdss_dsi_ctrl_pdata,
				panel_data);

	pr_debug("%s+: ctrl=%p ndx=%d\n", __func__,
				ctrl_pdata, ctrl_pdata->ndx);

	WARN((ctrl_pdata->ctrl_state & CTRL_STATE_PANEL_INIT),
		"Incorrect Ctrl state=0x%x\n", ctrl_pdata->ctrl_state);

	mdss_dsi_sw_reset(pdata);
	mdss_dsi_host_init(mipi, pdata);
	mdss_dsi_op_mode_config(mipi->mode, pdata);

	if (ctrl_pdata->on_cmds.link_state == DSI_LP_MODE) {
		ret = mdss_dsi_unblank(pdata);
		if (ret) {
			pr_err("%s: unblank failed\n", __func__);
			return ret;
		}
	}

	pr_debug("%s-:End\n", __func__);
	return ret;
}

static int mdss_dsi_dfps_config(struct mdss_panel_data *pdata, int new_fps)
{
	int rc = 0;
	struct mdss_dsi_ctrl_pdata *ctrl_pdata = NULL;
	u32 dsi_ctrl;

	pr_debug("%s+:\n", __func__);

	if (pdata == NULL) {
		pr_err("%s: Invalid input data\n", __func__);
		return -EINVAL;
	}

	ctrl_pdata = container_of(pdata, struct mdss_dsi_ctrl_pdata,
				panel_data);

	if (!ctrl_pdata->panel_data.panel_info.dynamic_fps) {
		pr_err("%s: Dynamic fps not enabled for this panel\n",
					__func__);
		return -EINVAL;
	}

	if (new_fps !=
		ctrl_pdata->panel_data.panel_info.mipi.frame_rate) {
		if (pdata->panel_info.dfps_update
			== DFPS_IMMEDIATE_PORCH_UPDATE_MODE) {
			u32 hsync_period, vsync_period;
			u32 new_dsi_v_total, current_dsi_v_total;
			vsync_period =
				mdss_panel_get_vtotal(&pdata->panel_info);
			hsync_period =
				mdss_panel_get_htotal(&pdata->panel_info);
			current_dsi_v_total =
				MIPI_INP((ctrl_pdata->ctrl_base) + 0x2C);
			new_dsi_v_total =
				((vsync_period - 1) << 16) | (hsync_period - 1);
			MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x2C,
				(current_dsi_v_total | 0x8000000));
			if (new_dsi_v_total & 0x8000000) {
				MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x2C,
					new_dsi_v_total);
			} else {
				MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x2C,
					(new_dsi_v_total | 0x8000000));
				MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x2C,
					(new_dsi_v_total & 0x7ffffff));
			}
			pdata->panel_info.mipi.frame_rate = new_fps;
		} else {
			rc = mdss_dsi_clk_div_config
				(&ctrl_pdata->panel_data.panel_info, new_fps);
			if (rc) {
				pr_err("%s: unable to initialize the clk dividers\n",
								__func__);
				return rc;
			}
			ctrl_pdata->pclk_rate =
				pdata->panel_info.mipi.dsi_pclk_rate;
			ctrl_pdata->byte_clk_rate =
				pdata->panel_info.clk_rate / 8;

			if (pdata->panel_info.dfps_update
					== DFPS_IMMEDIATE_CLK_UPDATE_MODE) {
				dsi_ctrl = MIPI_INP((ctrl_pdata->ctrl_base) +
						    0x0004);
				pdata->panel_info.mipi.frame_rate = new_fps;
				dsi_ctrl &= ~0x2;
				MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x0004,
								dsi_ctrl);
				mdss_dsi_controller_cfg(true, pdata);
				mdss_dsi_clk_ctrl(ctrl_pdata, 0);
				mdss_dsi_clk_ctrl(ctrl_pdata, 1);
				dsi_ctrl |= 0x2;
				MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x0004,
								dsi_ctrl);
			}
		}
	} else {
		pr_debug("%s: Panel is already at this FPS\n", __func__);
	}

	return rc;
}

static int mdss_dsi_ctl_partial_update(struct mdss_panel_data *pdata)
{
	int rc = -EINVAL;
	u32 data;
	struct mdss_dsi_ctrl_pdata *ctrl_pdata = NULL;

	if (pdata == NULL) {
		pr_err("%s: Invalid input data\n", __func__);
		return -EINVAL;
	}

	ctrl_pdata = container_of(pdata, struct mdss_dsi_ctrl_pdata,
				panel_data);

	/* DSI_COMMAND_MODE_MDP_STREAM_CTRL */
	data = (((pdata->panel_info.roi_w * 3) + 1) << 16) |
			(pdata->panel_info.mipi.vc << 8) | DTYPE_DCS_LWRITE;
	MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x60, data);
	MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x58, data);

	/* DSI_COMMAND_MODE_MDP_STREAM_TOTAL */
	data = pdata->panel_info.roi_h << 16 | pdata->panel_info.roi_w;
	MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x64, data);
	MIPI_OUTP((ctrl_pdata->ctrl_base) + 0x5C, data);

	if (ctrl_pdata->partial_update_fnc)
		rc = ctrl_pdata->partial_update_fnc(pdata);

	if (rc) {
		pr_err("%s: unable to initialize the panel\n",
				__func__);
		return rc;
	}

	return rc;
}

int is_splash_finish = 0;
static int mdss_dsi_event_handler(struct mdss_panel_data *pdata,
				  int event, void *arg)
{
	int rc = 0;
	struct mdss_dsi_ctrl_pdata *ctrl_pdata = NULL;

	if (pdata == NULL) {
		pr_err("%s: Invalid input data\n", __func__);
		return -EINVAL;
	}
	ctrl_pdata = container_of(pdata, struct mdss_dsi_ctrl_pdata,
				panel_data);
	pr_debug("%s+:event=%d\n", __func__, event);

	switch (event) {
	case MDSS_EVENT_UNBLANK:
		rc = mdss_dsi_on(pdata);
		mdss_dsi_op_mode_config(pdata->panel_info.mipi.mode,
							pdata);
		if (ctrl_pdata->on_cmds.link_state == DSI_LP_MODE)
			rc = mdss_dsi_unblank(pdata);
		if (!is_splash_finish)
			is_splash_finish = 1;
		break;
	case MDSS_EVENT_PANEL_ON:
		ctrl_pdata->ctrl_state |= CTRL_STATE_MDP_ACTIVE;
		if (ctrl_pdata->on_cmds.link_state == DSI_HS_MODE)
			rc = mdss_dsi_unblank(pdata);
		break;
	case MDSS_EVENT_BLANK:
		if (ctrl_pdata->off_cmds.link_state == DSI_HS_MODE)
			rc = mdss_dsi_blank(pdata);
		break;
	case MDSS_EVENT_PANEL_OFF:
		ctrl_pdata->ctrl_state &= ~CTRL_STATE_MDP_ACTIVE;
		if (ctrl_pdata->off_cmds.link_state == DSI_LP_MODE)
			rc = mdss_dsi_blank(pdata);
		rc = mdss_dsi_off(pdata);
		break;
	case MDSS_EVENT_CONT_SPLASH_FINISH:
		ctrl_pdata->ctrl_state &= ~CTRL_STATE_MDP_ACTIVE;
		if (ctrl_pdata->on_cmds.link_state == DSI_LP_MODE) {
			rc = mdss_dsi_cont_splash_on(pdata);
		} else {
			pr_debug("%s:event=%d, Dsi On not called: ctrl_state: %d\n",
				 __func__, event,
				 ctrl_pdata->on_cmds.link_state);
			rc = -EINVAL;
		}
		break;
	case MDSS_EVENT_PANEL_CLK_CTRL:
		mdss_dsi_clk_req(ctrl_pdata, (int)arg);
		break;
	case MDSS_EVENT_DSI_CMDLIST_KOFF:
		ctrl_pdata->recovery = (struct mdss_panel_recovery *)arg;
		mdss_dsi_cmdlist_commit(ctrl_pdata, 1);
		break;
	case MDSS_EVENT_PANEL_UPDATE_FPS:
		if (arg != NULL) {
			rc = mdss_dsi_dfps_config(pdata, (int)arg);
			pr_debug("%s:update fps to = %d\n",
				__func__, (int)arg);
		}
		break;
	case MDSS_EVENT_CONT_SPLASH_BEGIN:
		if (ctrl_pdata->off_cmds.link_state == DSI_HS_MODE) {
			/* Panel is Enabled in Bootloader */
			rc = mdss_dsi_blank(pdata);
		}
		break;
	case MDSS_EVENT_ENABLE_PARTIAL_UPDATE:
		rc = mdss_dsi_ctl_partial_update(pdata);
		break;
	default:
		pr_debug("%s: unhandled event=%d\n", __func__, event);
		break;
	}
	pr_debug("%s-:event=%d, rc=%d\n", __func__, event, rc);
	return rc;
}

static struct device_node *mdss_dsi_pref_prim_panel(
		struct platform_device *pdev)
{
	struct device_node *dsi_pan_node = NULL;

	pr_debug("%s:%d: Select primary panel from dt\n",
					__func__, __LINE__);
	dsi_pan_node = of_parse_phandle(pdev->dev.of_node,
					"qcom,dsi-pref-prim-pan", 0);
	if (!dsi_pan_node)
		pr_err("%s:can't find panel phandle\n", __func__);

	return dsi_pan_node;
}

/**
 * mdss_dsi_find_panel_of_node(): find device node of dsi panel
 * @pdev: platform_device of the dsi ctrl node
 * @panel_cfg: string containing intf specific config data
 *
 * Function finds the panel device node using the interface
 * specific configuration data. This configuration data is
 * could be derived from the result of bootloader's GCDB
 * panel detection mechanism. If such config data doesn't
 * exist then this panel returns the default panel configured
 * in the device tree.
 *
 * returns pointer to panel node on success, NULL on error.
 */
static struct device_node *mdss_dsi_find_panel_of_node(
		struct platform_device *pdev, char *panel_cfg)
{
	int len, i;
	int ctrl_id = pdev->id - 1;
	char panel_name[MDSS_MAX_PANEL_LEN];
	char ctrl_id_stream[3] =  "0:";
	char *stream = NULL, *pan = NULL;
	struct device_node *dsi_pan_node = NULL, *mdss_node = NULL;

	len = strlen(panel_cfg);
	if (!len) {
		/* no panel cfg chg, parse dt */
		pr_debug("%s:%d: no cmd line cfg present\n",
			 __func__, __LINE__);
		goto end;
	} else {
		if (ctrl_id == 1)
			strlcpy(ctrl_id_stream, "1:", 3);

		stream = strnstr(panel_cfg, ctrl_id_stream, len);
		if (!stream) {
			pr_err("controller config is not present\n");
			goto end;
		}
		stream += 2;

		pan = strnchr(stream, strlen(stream), ':');
		if (!pan) {
			strlcpy(panel_name, stream, MDSS_MAX_PANEL_LEN);
		} else {
			for (i = 0; (stream + i) < pan; i++)
				panel_name[i] = *(stream + i);
			panel_name[i] = 0;
		}

		pr_debug("%s:%d:%s:%s\n", __func__, __LINE__,
			 panel_cfg, panel_name);

		mdss_node = of_parse_phandle(pdev->dev.of_node,
					     "qcom,mdss-mdp", 0);

		if (!mdss_node) {
			pr_err("%s: %d: mdss_node null\n",
			       __func__, __LINE__);
			return NULL;
		}
		dsi_pan_node = of_find_node_by_name(mdss_node,
						    panel_name);
		if (!dsi_pan_node) {
			pr_err("%s: invalid pan node, selecting prim panel\n",
			       __func__);
			goto end;
		}
		return dsi_pan_node;
	}
end:
	dsi_pan_node = mdss_dsi_pref_prim_panel(pdev);

	return dsi_pan_node;
}


/** ZTE_MODIFY chenfei added for LCD driver 2013/05/21 */ 

//mdss start

enum{
	lcd_ce_OFF = 0,
	lcd_ce_LOW,
	lcd_ce_MIDDLE,
	lcd_ce_HIGH,
};

enum {
TIANMA_HX8394_720P_VIDEO_PANEL,
LEAD_OTM1283_720P_VIDEO_PANEL,
YASSY_HX8394_720P_VIDEO_PANEL,
SHARP_1080P_VIDEO_PANEL,
TIANMA_OTM1283_720P_VIDEO_PANEL,
YUSHUN_NT35521_720P_VIDEO_PANEL,
BOE_OTM1283_720P_VIDEO_PANEL,
PANEL_UNKNOWN,
};

int current_ce_mode = 0;
static struct mdss_dsi_ctrl_pdata *g_ctrl_pdata = NULL;

static uint32_t panel_id;
 
#define mdd_debug pr_info

								 
static char otm1283_ce_cmd1[2] = {0x00,0x00};
static char otm1283_ce_off[2] = {0x55,0x01};
static char otm1283_ce_low[2] = {0x55,0x81};
static char otm1283_ce_middle[2] = {0x55,0x91};
static char otm1283_ce_high[2] = {0x55,0xB1};

static struct dsi_cmd_desc otm1283_ce_off_cmds[] = {
	{{DTYPE_GEN_LWRITE, 1, 0, 0, 0, sizeof(otm1283_ce_cmd1)}, otm1283_ce_cmd1},
	{{DTYPE_GEN_LWRITE, 1, 0, 0, 0, sizeof(otm1283_ce_off)}, otm1283_ce_off},
};

static struct dsi_cmd_desc otm1283_ce_low_cmds[] = {
	{{DTYPE_GEN_LWRITE, 1, 0, 0, 0, sizeof(otm1283_ce_cmd1)}, otm1283_ce_cmd1},
	{{DTYPE_GEN_LWRITE, 1, 0, 0, 0, sizeof(otm1283_ce_low)}, otm1283_ce_low},
};
/*
static struct dsi_cmd_desc otm1283_ce_middle_cmds[] = {
	{{DTYPE_GEN_LWRITE, 1, 0, 0, 0, sizeof(otm1283_ce_cmd1)}, otm1283_ce_cmd1},
	{{DTYPE_GEN_LWRITE, 1, 0, 0, 0, sizeof(otm1283_ce_middle)}, otm1283_ce_middle},
};
*/
static struct dsi_cmd_desc otm1283_ce_high_cmds[] = {
	{{DTYPE_GEN_LWRITE, 1, 0, 0, 0, sizeof(otm1283_ce_cmd1)}, otm1283_ce_cmd1},
	{{DTYPE_GEN_LWRITE, 1, 0, 0, 0, sizeof(otm1283_ce_high)}, otm1283_ce_high},
};

static struct dsi_cmd_desc nt35521_ce_off_cmds[] = {
	{{DTYPE_DCS_WRITE1, 1, 0, 0, 0, sizeof(otm1283_ce_off)}, otm1283_ce_off},
};

static struct dsi_cmd_desc nt35521_ce_low_cmds[] = {
	{{DTYPE_DCS_WRITE1, 1, 0, 0, 0, sizeof(otm1283_ce_low)}, otm1283_ce_low},
};

static struct dsi_cmd_desc nt35521_ce_middle_cmds[] = {
	{{DTYPE_DCS_WRITE1, 1, 0, 0, 0, sizeof(otm1283_ce_middle)}, otm1283_ce_middle},
};

static struct dsi_cmd_desc nt35521_ce_high_cmds[] = {
	{{DTYPE_DCS_WRITE1, 1, 0, 0, 0, sizeof(otm1283_ce_high)}, otm1283_ce_high},
};


static char hx8394_ce_off[2] = {0xe4,0x00};
static char hx8394_ce_low[2] = {0xe4,0x01};
static char hx8394_ce_middle[2] = {0xe4,0x02};
static char hx8394_ce_high[2] = {0xe4,0x03};


static struct dsi_cmd_desc hx8394_ce_off_cmds[] = {
	{{DTYPE_GEN_WRITE2, 1, 0, 0, 0, sizeof(hx8394_ce_off)}, hx8394_ce_off},
};

static struct dsi_cmd_desc hx8394_ce_low_cmds[] = {
	{{DTYPE_GEN_WRITE2, 1, 0, 0, 0, sizeof(hx8394_ce_low)}, hx8394_ce_low},
};

static struct dsi_cmd_desc hx8394_ce_middle_cmds[] = {
	{{DTYPE_GEN_WRITE2, 1, 0, 0, 0, sizeof(hx8394_ce_middle)}, hx8394_ce_middle},
};

static struct dsi_cmd_desc hx8394_ce_high_cmds[] = {
	{{DTYPE_GEN_WRITE2, 1, 0, 0, 0, sizeof(hx8394_ce_high)}, hx8394_ce_high},
};

static char sharp_1080p_ce_off[] = {0xca, \
								   0x00, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x08, 0x20, \
								   0x80, 0x80, 0x0a, 0x4a, 0x37, 0xa0, 0x55, 0xf8, 0x0c, 0x0c, \
								   0x20, 0x10, 0x3f, 0x3f, 0x00, 0x00, 0x10, 0x10, 0x3f, 0x3f, \
								   0x3f, 0x3f};
static char sharp_1080p_low[] =      {0xca, \
								   0x01, 0x80, 0x83, 0xa5, 0xc8, 0xd2, 0xdc, 0xdc, 0x08, 0x20, \
								   0x80, 0xff, 0x0a, 0x4a, 0x37, 0xa0, 0x55, 0xf8, 0x0c, 0x0c, \
								   0x20, 0x10, 0x3f, 0x3f, 0x00, 0x00, 0x10, 0x10, 0x3f, 0x3f, \
								   0x3f, 0x3f};
static char sharp_1080p_middle[] = {0xca, \
								   0x01, 0x80, 0xdc, 0xf0, 0xdc, 0xf0, 0xdc, 0xf0, 0x0c, 0x3f, \
								   0x14, 0x80, 0x0a, 0x4a, 0x37, 0xa0, 0x55, 0xf8, 0x0c, 0x0c, \
								   0x20, 0x10, 0x3f, 0x3f, 0x00, 0x00, 0x10, 0x10, 0x3f, 0x3f, \
								   0x3f, 0x3f};
static char sharp_1080p_high[] =     {0xca, \
								   0x01, 0x80, 0xdc, 0xf0, 0xdc, 0xf0, 0xdc, 0xf0, 0x18, 0x3f, \
								   0x14, 0x8a, 0x0a, 0x4a, 0x37, 0xa0, 0x55, 0xf8, 0x0c, 0x0c, \
								   0x20, 0x10, 0x3f, 0x3f, 0x00, 0x00, 0x10, 0x10, 0x3f, 0x3f, \
								   0x3f, 0x3f};

static struct dsi_cmd_desc sharp_1080p_ce_off_cmds[] = {
	{{DTYPE_GEN_LWRITE, 1, 0, 0, 0, sizeof(sharp_1080p_ce_off)}, sharp_1080p_ce_off},
};

static struct dsi_cmd_desc sharp_1080p_ce_low_cmds[] = {
	{{DTYPE_GEN_LWRITE, 1, 0, 0, 0, sizeof(sharp_1080p_low)}, sharp_1080p_low},
};

static struct dsi_cmd_desc sharp_1080p_ce_middle_cmds[] = {
	{{DTYPE_GEN_LWRITE, 1, 0, 0, 0, sizeof(sharp_1080p_middle)}, sharp_1080p_middle},
};

static struct dsi_cmd_desc sharp_1080p_ce_high_cmds[] = {
	{{DTYPE_GEN_LWRITE, 1, 0, 0, 0, sizeof(sharp_1080p_high)}, sharp_1080p_high},
};

#define LCD_ID0_GPIO 33
#define LCD_ID1_GPIO 34

static int panel_ce_proc_show(struct seq_file *m, void *v)
{
		
	seq_printf(m, "%d\n", current_ce_mode); 
	
	return 0;
}

static int panel_ce_proc_open(struct inode *inode, struct file *file)
{
	return single_open(file, panel_ce_proc_show, NULL);
}
#ifdef CONFIG_PROJECT_P892S10_ZTE
extern int brightness_level;
#endif
int panel_ce_set(int mode)
{
	struct dcs_cmd_req cmdreq;
	uint32_t panel_gpio_id = 0;

	if (g_ctrl_pdata && !(g_ctrl_pdata->ctrl_state & CTRL_STATE_PANEL_INIT))
	{
		mdd_debug("[mdss]:lcd not init yet!\n");
		current_ce_mode = mode;
		return 0;
	}
	
	memset(&cmdreq, 0, sizeof(cmdreq));
	
	panel_gpio_id =  (gpio_get_value(LCD_ID0_GPIO)&0x1) | ((gpio_get_value(LCD_ID1_GPIO) << 1)&0x2);

	#if defined CONFIG_PROJECT_P862A10_ZTE
	if (panel_gpio_id == 0x00) //lead
	{
		panel_id = LEAD_OTM1283_720P_VIDEO_PANEL;

	}
	else if (panel_gpio_id == 0x01) //yassy
	{
		panel_id = YASSY_HX8394_720P_VIDEO_PANEL;
	}
	else if (panel_gpio_id == 0x02) //tianma 
	{
		panel_id = TIANMA_HX8394_720P_VIDEO_PANEL;
	}
	else
		panel_id = 0xf;
	#elif defined CONFIG_PROJECT_P892S10_ZTE
	pr_info("panel_gpio_id = %d\n", panel_gpio_id);
	if (panel_gpio_id == 0x3)
		panel_id = TIANMA_OTM1283_720P_VIDEO_PANEL;
	else if (panel_gpio_id == 0x1)
		panel_id = YUSHUN_NT35521_720P_VIDEO_PANEL;
	else if (panel_gpio_id == 0x0)
		panel_id = BOE_OTM1283_720P_VIDEO_PANEL;
	else
		panel_id = PANEL_UNKNOWN;
	if(brightness_level > 125)
	{
		otm1283_ce_off[1] = 0x03;
		otm1283_ce_low[1] = 0x83;
		otm1283_ce_middle[1] = 0x93;
		otm1283_ce_high[1] = 0xB3;
	}
	else
	{
		otm1283_ce_off[1] = 0x01;
		otm1283_ce_low[1] = 0x81;
		otm1283_ce_middle[1] = 0x91;
		otm1283_ce_high[1] = 0xB1;
	}
	#else
	panel_id = SHARP_1080P_VIDEO_PANEL;
	#endif
	
	
	mutex_lock(ce_lock);
	
	if(mode == lcd_ce_OFF)
	{		
		if (panel_id == LEAD_OTM1283_720P_VIDEO_PANEL || panel_id == TIANMA_OTM1283_720P_VIDEO_PANEL ||  panel_id == BOE_OTM1283_720P_VIDEO_PANEL)
		{
			mdd_debug("[mdss]:otm1283 pannel ce off %x!\n", otm1283_ce_off[1]);
			cmdreq.cmds = otm1283_ce_off_cmds;
			cmdreq.cmds_cnt = ARRAY_SIZE(otm1283_ce_off_cmds);
			cmdreq.flags = CMD_REQ_COMMIT | CMD_CLK_CTRL;
			cmdreq.rlen = 0;
			cmdreq.cb = NULL;
			mdss_dsi_cmdlist_put(g_ctrl_pdata, &cmdreq);
		}
		else if (panel_id == YASSY_HX8394_720P_VIDEO_PANEL )
		{
			mdd_debug("[mdss]:hx8394 pannel ce off!\n");
			cmdreq.cmds = hx8394_ce_off_cmds;
			cmdreq.cmds_cnt = ARRAY_SIZE(hx8394_ce_off_cmds);
			cmdreq.flags = CMD_REQ_COMMIT | CMD_CLK_CTRL;
			cmdreq.rlen = 0;
			cmdreq.cb = NULL;
			mdss_dsi_cmdlist_put(g_ctrl_pdata, &cmdreq);
		}
		else if (panel_id == SHARP_1080P_VIDEO_PANEL )
		{
			mdd_debug("[mdss]:sharp pannel ce off!\n");
			cmdreq.cmds = sharp_1080p_ce_off_cmds;
			cmdreq.cmds_cnt = ARRAY_SIZE(sharp_1080p_ce_off_cmds);
			cmdreq.flags = CMD_REQ_COMMIT | CMD_CLK_CTRL;
			cmdreq.rlen = 0;
			cmdreq.cb = NULL;
			mdss_dsi_cmdlist_put(g_ctrl_pdata, &cmdreq);
		}
		else if (YUSHUN_NT35521_720P_VIDEO_PANEL == panel_id)
		{
			mdd_debug("[mdss]:nt35521 pannel ce off!\n");
			cmdreq.cmds = nt35521_ce_off_cmds;
			cmdreq.cmds_cnt = ARRAY_SIZE(nt35521_ce_off_cmds);
			cmdreq.flags = CMD_REQ_COMMIT | CMD_CLK_CTRL;
			cmdreq.rlen = 0;
			cmdreq.cb = NULL;
			mdss_dsi_cmdlist_put(g_ctrl_pdata, &cmdreq);
		}
		current_ce_mode = mode;
	}
	else if(mode == lcd_ce_LOW)
	{
		if (panel_id == LEAD_OTM1283_720P_VIDEO_PANEL || panel_id == TIANMA_OTM1283_720P_VIDEO_PANEL ||  panel_id == BOE_OTM1283_720P_VIDEO_PANEL)
		{
			mdd_debug("[mdss]:otm1283 pannel ce low %x!\n", otm1283_ce_off[1]);
		
			cmdreq.cmds = otm1283_ce_off_cmds;
			cmdreq.cmds_cnt = ARRAY_SIZE(otm1283_ce_off_cmds);
			cmdreq.flags = CMD_REQ_COMMIT | CMD_CLK_CTRL;
			cmdreq.rlen = 0;
			cmdreq.cb = NULL;
			mdss_dsi_cmdlist_put(g_ctrl_pdata, &cmdreq);
		}
		else if (panel_id == YASSY_HX8394_720P_VIDEO_PANEL )
		{
			mdd_debug("[mdss]:hx8394 pannel ce low!\n");
		
			cmdreq.cmds = hx8394_ce_low_cmds;
			cmdreq.cmds_cnt = ARRAY_SIZE(hx8394_ce_low_cmds);
			cmdreq.flags = CMD_REQ_COMMIT | CMD_CLK_CTRL;
			cmdreq.rlen = 0;
			cmdreq.cb = NULL;
			mdss_dsi_cmdlist_put(g_ctrl_pdata, &cmdreq);
			
		}
		else if (panel_id == SHARP_1080P_VIDEO_PANEL )
		{
			mdd_debug("[mdss]:sharp pannel ce low!\n");
		
			cmdreq.cmds = sharp_1080p_ce_low_cmds;
			cmdreq.cmds_cnt = ARRAY_SIZE(sharp_1080p_ce_low_cmds);
			cmdreq.flags = CMD_REQ_COMMIT | CMD_CLK_CTRL;
			cmdreq.rlen = 0;
			cmdreq.cb = NULL;
			mdss_dsi_cmdlist_put(g_ctrl_pdata, &cmdreq);
			
		}
		else if (YUSHUN_NT35521_720P_VIDEO_PANEL == panel_id)
		{
			mdd_debug("[mdss]:nt35521 pannel ce low!\n");
			cmdreq.cmds = nt35521_ce_low_cmds;
			cmdreq.cmds_cnt = ARRAY_SIZE(nt35521_ce_low_cmds);
			cmdreq.flags = CMD_REQ_COMMIT | CMD_CLK_CTRL;
			cmdreq.rlen = 0;
			cmdreq.cb = NULL;
			mdss_dsi_cmdlist_put(g_ctrl_pdata, &cmdreq);
		}
		current_ce_mode = mode;
	}
	else if(mode == lcd_ce_MIDDLE)
	{
		if (panel_id == LEAD_OTM1283_720P_VIDEO_PANEL || panel_id == TIANMA_OTM1283_720P_VIDEO_PANEL ||  panel_id == BOE_OTM1283_720P_VIDEO_PANEL )
		{
			mdd_debug("[mdss]:otm1283 pannel ce middle %x!\n", otm1283_ce_low[1]);
			
			cmdreq.cmds = otm1283_ce_low_cmds;
			cmdreq.cmds_cnt = ARRAY_SIZE(otm1283_ce_low_cmds);
			cmdreq.flags = CMD_REQ_COMMIT | CMD_CLK_CTRL;
			cmdreq.rlen = 0;
			cmdreq.cb = NULL;
			mdss_dsi_cmdlist_put(g_ctrl_pdata, &cmdreq);
		}
		else if (panel_id == YASSY_HX8394_720P_VIDEO_PANEL )
		{
			mdd_debug("[mdss]:hx8394 pannel ce middle!\n");
			
			cmdreq.cmds = hx8394_ce_middle_cmds;
			cmdreq.cmds_cnt = ARRAY_SIZE(hx8394_ce_middle_cmds);
			cmdreq.flags = CMD_REQ_COMMIT | CMD_CLK_CTRL;
			cmdreq.rlen = 0;
			cmdreq.cb = NULL;
			mdss_dsi_cmdlist_put(g_ctrl_pdata, &cmdreq);
		}
		else if (panel_id == SHARP_1080P_VIDEO_PANEL )
		{
			mdd_debug("[mdss]:sharp pannel ce middle!\n");
			
			cmdreq.cmds = sharp_1080p_ce_middle_cmds;
			cmdreq.cmds_cnt = ARRAY_SIZE(sharp_1080p_ce_middle_cmds);
			cmdreq.flags = CMD_REQ_COMMIT | CMD_CLK_CTRL;
			cmdreq.rlen = 0;
			cmdreq.cb = NULL;
			mdss_dsi_cmdlist_put(g_ctrl_pdata, &cmdreq);
		}
		else if (YUSHUN_NT35521_720P_VIDEO_PANEL == panel_id)
		{
			mdd_debug("[mdss]:nt35521 pannel ce middle!\n");
			cmdreq.cmds = nt35521_ce_middle_cmds;
			cmdreq.cmds_cnt = ARRAY_SIZE(nt35521_ce_middle_cmds);
			cmdreq.flags = CMD_REQ_COMMIT | CMD_CLK_CTRL;
			cmdreq.rlen = 0;
			cmdreq.cb = NULL;
			mdss_dsi_cmdlist_put(g_ctrl_pdata, &cmdreq);
		}
		
		current_ce_mode = mode;
	}
	else if(mode == lcd_ce_HIGH)
	{
		if (panel_id == LEAD_OTM1283_720P_VIDEO_PANEL || panel_id == TIANMA_OTM1283_720P_VIDEO_PANEL ||  panel_id == BOE_OTM1283_720P_VIDEO_PANEL)
		{
			mdd_debug("[mdss]:otm1283 pannel ce high %x!\n", otm1283_ce_high[1]);
			//mdss_dsi_cmds_tx(g_ctrl_pdata,	ys_panel_ce_high, 
			//	ARRAY_SIZE(ys_panel_ce_high));
			cmdreq.cmds = otm1283_ce_high_cmds;
			cmdreq.cmds_cnt = ARRAY_SIZE(otm1283_ce_high_cmds);
			cmdreq.flags = CMD_REQ_COMMIT | CMD_CLK_CTRL;
			cmdreq.rlen = 0;
			cmdreq.cb = NULL;
			mdss_dsi_cmdlist_put(g_ctrl_pdata, &cmdreq);
		}
		else if (panel_id == YASSY_HX8394_720P_VIDEO_PANEL )
		{
			mdd_debug("[mdss]:hx8394 pannel ce high!\n");
		
			cmdreq.cmds = hx8394_ce_high_cmds;
			cmdreq.cmds_cnt = ARRAY_SIZE(hx8394_ce_high_cmds);
			cmdreq.flags = CMD_REQ_COMMIT | CMD_CLK_CTRL;
			cmdreq.rlen = 0;
			cmdreq.cb = NULL;
			mdss_dsi_cmdlist_put(g_ctrl_pdata, &cmdreq);
		}
		else if (panel_id == SHARP_1080P_VIDEO_PANEL )
		{
			mdd_debug("[mdss]:sharp pannel ce high!\n");
		
			cmdreq.cmds = sharp_1080p_ce_high_cmds;
			cmdreq.cmds_cnt = ARRAY_SIZE(sharp_1080p_ce_high_cmds);
			cmdreq.flags = CMD_REQ_COMMIT | CMD_CLK_CTRL;
			cmdreq.rlen = 0;
			cmdreq.cb = NULL;
			mdss_dsi_cmdlist_put(g_ctrl_pdata, &cmdreq);
		}
		else if (YUSHUN_NT35521_720P_VIDEO_PANEL == panel_id)
		{
			mdd_debug("[mdss]:nt35521 pannel ce high!\n");
			cmdreq.cmds = nt35521_ce_high_cmds;
			cmdreq.cmds_cnt = ARRAY_SIZE(nt35521_ce_high_cmds);
			cmdreq.flags = CMD_REQ_COMMIT | CMD_CLK_CTRL;
			cmdreq.rlen = 0;
			cmdreq.cb = NULL;
			mdss_dsi_cmdlist_put(g_ctrl_pdata, &cmdreq);
		}
		current_ce_mode = mode;
	}

	mutex_unlock(ce_lock);

	return 0;
}

static ssize_t panel_ce_proc_write(struct file *file, const char __user *buffer,
				    size_t count, loff_t *pos)
{	
	char ret;
	int rc;
	int i = 0;
	static int first_time = 1;	

	for (; i < count; i++)
	{
		rc = get_user(ret, buffer);
		if (rc)
		return rc;
		
		if (ret >= '0' && ret <= '9')
			ret = ret - '0';
	}

	mdd_debug("mdss user ce set mode = %d\n", ret);

	if (ret == current_ce_mode)
	{
		mdd_debug("[mdss]:the current state = %d has been set already!\n", current_ce_mode);
		return 1;
	}

	if(first_time == 1)
	{
		first_time = 0;
		current_ce_mode = ret;
		return 0;
	}

	panel_ce_set((int)ret);

	return 1;
}


static const struct file_operations panel_ce_proc_fops = {
	.open		= panel_ce_proc_open,
	.read		= seq_read,
	.llseek		= seq_lseek,
	.release	= single_release,
	.write		= panel_ce_proc_write,
};
#if 1

void read_pwr_state(int data)
{
	pr_info("%s pwr_state = %x\n", __func__, data&0xff);
}

static char dcs_cmd[2] = {0x54, 0x00}; /* DTYPE_DCS_READ */
static struct dsi_cmd_desc dcs_read_cmd = {
	{DTYPE_DCS_READ, 1, 0, 1, 5, sizeof(dcs_cmd)},
	dcs_cmd
};
static char rx_buf[8] = {0};

u32 mdss_dsi_dcs_read(struct mdss_dsi_ctrl_pdata *ctrl,
			char cmd0, char cmd1)
{
	struct dcs_cmd_req cmdreq;

	dcs_cmd[0] = cmd0;
	dcs_cmd[1] = cmd1;
	memset(&cmdreq, 0, sizeof(cmdreq));
	cmdreq.cmds = &dcs_read_cmd;
	cmdreq.cmds_cnt = 1;
	cmdreq.flags = CMD_REQ_RX | CMD_REQ_COMMIT;
	cmdreq.rlen = 1;
	cmdreq.rbuf = rx_buf;
	cmdreq.cb = read_pwr_state; /* call back */

	mdss_dsi_cmdlist_put(ctrl, &cmdreq);

	
	/*
	 * blocked here, until call back called
	 */

	return 0;
}
static int panel_pwr_state_proc_show(struct seq_file *m, void *v)
{
		
	mdss_dsi_dcs_read(g_ctrl_pdata, 0x0a, 0x00);
	
	return 0;
}
static int panel_pwr_state_proc_open(struct inode *inode, struct file *file)
{
	return single_open(file, panel_pwr_state_proc_show, NULL);
}

static const struct file_operations panel_pwr_state_proc_fops = {
	.open		= panel_pwr_state_proc_open,
	.read		= seq_read,
	.llseek		= seq_lseek,
	.release	= single_release,
};
#endif

static int panel_ce_proc_init(void)
{
 	struct proc_dir_entry *res;
	res = proc_create("panel_ce_switch", S_IWUGO | S_IRUGO, NULL,
			  &panel_ce_proc_fops);
	if (!res)
	{
		printk(KERN_INFO "failed to create /proc/panel_ce_switch\n");
		return -ENOMEM;
	}

	printk(KERN_INFO "created /proc/panel_ce_switch\n");

	#if 1
	res = proc_create("panel_pwr_state", S_IRUGO, NULL,
			  &panel_pwr_state_proc_fops);
	if (!res)
	{
		printk(KERN_INFO "failed to create /proc/panel_pwr_state\n");
		return -ENOMEM;
	}

	printk(KERN_INFO "created /proc/panel_pwr_state\n");
	#endif
	
	return 0;
}

//end
/** ZTE_MODIFY end chenfei */ 

static int __devinit mdss_dsi_ctrl_probe(struct platform_device *pdev)
{
	int rc = 0;
	u32 index;
	struct mdss_dsi_ctrl_pdata *ctrl_pdata = NULL;
	struct device_node *dsi_pan_node = NULL;
	char panel_cfg[MDSS_MAX_PANEL_LEN];
	struct resource *mdss_dsi_mres;
	const char *ctrl_name;
	bool cmd_cfg_cont_splash = true;

	if (!mdss_is_ready()) {
		pr_err("%s: MDP not probed yet!\n", __func__);
		return -EPROBE_DEFER;
	}

	if (!pdev->dev.of_node) {
		pr_err("DSI driver only supports device tree probe\n");
		return -ENOTSUPP;
	}

	ctrl_pdata = platform_get_drvdata(pdev);
	if (!ctrl_pdata) {
		ctrl_pdata = devm_kzalloc(&pdev->dev,
					  sizeof(struct mdss_dsi_ctrl_pdata),
					  GFP_KERNEL);
		if (!ctrl_pdata) {
			pr_err("%s: FAILED: cannot alloc dsi ctrl\n",
			       __func__);
			rc = -ENOMEM;
			goto error_no_mem;
		}
		platform_set_drvdata(pdev, ctrl_pdata);
	}

	ctrl_name = of_get_property(pdev->dev.of_node, "label", NULL);
	if (!ctrl_name)
		pr_info("%s:%d, DSI Ctrl name not specified\n",
			__func__, __LINE__);
	else
		pr_info("%s: DSI Ctrl name = %s\n",
			__func__, ctrl_name);

	rc = of_property_read_u32(pdev->dev.of_node,
				  "cell-index", &index);
	if (rc) {
		dev_err(&pdev->dev,
			"%s: Cell-index not specified, rc=%d\n",
			__func__, rc);
		goto error_no_mem;
	}

	if (index == 0)
		pdev->id = 1;
	else
		pdev->id = 2;

	mdss_dsi_mres = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	if (!mdss_dsi_mres) {
		pr_err("%s:%d unable to get the MDSS resources",
		       __func__, __LINE__);
		rc = -ENOMEM;
		goto error_no_mem;
	}

	mdss_dsi_base = ioremap(mdss_dsi_mres->start,
				resource_size(mdss_dsi_mres));
	if (!mdss_dsi_base) {
		pr_err("%s:%d unable to remap dsi resources",
		       __func__, __LINE__);
		rc = -ENOMEM;
		goto error_no_mem;
	}

	rc = of_platform_populate(pdev->dev.of_node,
				  NULL, NULL, &pdev->dev);
	if (rc) {
		dev_err(&pdev->dev,
			"%s: failed to add child nodes, rc=%d\n",
			__func__, rc);
		goto error_ioremap;
	}

	/* Parse the regulator information */
	rc = mdss_dsi_get_dt_vreg_data(&pdev->dev,
				       &ctrl_pdata->power_data);
	if (rc) {
		pr_err("%s: failed to get vreg data from dt. rc=%d\n",
		       __func__, rc);
		goto error_vreg;
	}

	/* DSI panels can be different between controllers */
	rc = mdss_dsi_get_panel_cfg(panel_cfg);
	if (!rc)
		/* dsi panel cfg not present */
		pr_warn("%s:%d:dsi specific cfg not present\n",
			__func__, __LINE__);

	/* find panel device node */
	dsi_pan_node = mdss_dsi_find_panel_of_node(pdev, panel_cfg);
	if (!dsi_pan_node) {
		pr_err("%s: can't find panel node %s\n", __func__, panel_cfg);
		goto error_pan_node;
	}

	cmd_cfg_cont_splash = mdss_panel_get_boot_cfg() ? true : false;

	rc = mdss_dsi_panel_init(dsi_pan_node, ctrl_pdata, cmd_cfg_cont_splash);
	if (rc) {
		pr_err("%s: dsi panel init failed\n", __func__);
		goto error_pan_node;
	}

	rc = dsi_panel_device_register(dsi_pan_node, ctrl_pdata);
	if (rc) {
		pr_err("%s: dsi panel dev reg failed\n", __func__);
		goto error_pan_node;
	}

	pr_debug("%s: Dsi Ctrl->%d initialized\n", __func__, index);

	/** ZTE_MODIFY chenfei added for LCD driver 2013/05/21 */ 
	if (index == 0)
	{
		panel_ce_proc_init();
		g_ctrl_pdata = ctrl_pdata;
	}
	/** ZTE_MODIFY end chenfei */ 

	return 0;

error_pan_node:
	of_node_put(dsi_pan_node);
error_vreg:
	mdss_dsi_put_dt_vreg_data(&pdev->dev, &ctrl_pdata->power_data);
error_ioremap:
	iounmap(mdss_dsi_base);
error_no_mem:
	devm_kfree(&pdev->dev, ctrl_pdata);

	return rc;
}

static int __devexit mdss_dsi_ctrl_remove(struct platform_device *pdev)
{
	struct msm_fb_data_type *mfd;
	struct mdss_dsi_ctrl_pdata *ctrl_pdata = platform_get_drvdata(pdev);

	if (!ctrl_pdata) {
		pr_err("%s: no driver data\n", __func__);
		return -ENODEV;
	}

	if (msm_dss_config_vreg(&pdev->dev,
			ctrl_pdata->power_data.vreg_config,
			ctrl_pdata->power_data.num_vreg, 1) < 0)
		pr_err("%s: failed to de-init vregs\n", __func__);
	mdss_dsi_put_dt_vreg_data(&pdev->dev, &ctrl_pdata->power_data);
	mfd = platform_get_drvdata(pdev);
	iounmap(mdss_dsi_base);
	return 0;
}

struct device dsi_dev;

int mdss_dsi_retrieve_ctrl_resources(struct platform_device *pdev, int mode,
			struct mdss_dsi_ctrl_pdata *ctrl)
{
	int rc = 0;
	u32 index;
	struct resource *mdss_dsi_mres;

	rc = of_property_read_u32(pdev->dev.of_node, "cell-index", &index);
	if (rc) {
		dev_err(&pdev->dev,
			"%s: Cell-index not specified, rc=%d\n",
						__func__, rc);
		return rc;
	}

	if (index == 0) {
		if (mode != DISPLAY_1) {
			pr_err("%s:%d Panel->Ctrl mapping is wrong",
				       __func__, __LINE__);
			return -EPERM;
		}
	} else if (index == 1) {
		if (mode != DISPLAY_2) {
			pr_err("%s:%d Panel->Ctrl mapping is wrong",
				       __func__, __LINE__);
			return -EPERM;
		}
	} else {
		pr_err("%s:%d Unknown Ctrl mapped to panel",
			       __func__, __LINE__);
		return -EPERM;
	}

	mdss_dsi_mres = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	if (!mdss_dsi_mres) {
		pr_err("%s:%d unable to get the DSI ctrl resources",
			       __func__, __LINE__);
		return -ENOMEM;
	}

	ctrl->ctrl_base = ioremap(mdss_dsi_mres->start,
		resource_size(mdss_dsi_mres));
	if (!(ctrl->ctrl_base)) {
		pr_err("%s:%d unable to remap dsi resources",
			       __func__, __LINE__);
		return -ENOMEM;
	}

	ctrl->reg_size = resource_size(mdss_dsi_mres);

	pr_info("%s: dsi base=%x size=%x\n",
		__func__, (int)ctrl->ctrl_base, ctrl->reg_size);

	return 0;
}

int dsi_panel_device_register(struct device_node *pan_node,
				struct mdss_dsi_ctrl_pdata *ctrl_pdata)
{
	struct mipi_panel_info *mipi;
	int rc, i, len;
	struct device_node *dsi_ctrl_np = NULL;
	struct platform_device *ctrl_pdev = NULL;
	bool dynamic_fps;
	const char *data;
	struct mdss_panel_info *pinfo = &(ctrl_pdata->panel_data.panel_info);

	mipi  = &(pinfo->mipi);

	pinfo->type =
		((mipi->mode == DSI_VIDEO_MODE)
			? MIPI_VIDEO_PANEL : MIPI_CMD_PANEL);

	rc = mdss_dsi_clk_div_config(pinfo, mipi->frame_rate);
	if (rc) {
		pr_err("%s: unable to initialize the clk dividers\n", __func__);
		return rc;
	}

	dsi_ctrl_np = of_parse_phandle(pan_node,
				"qcom,mdss-dsi-panel-controller", 0);
	if (!dsi_ctrl_np) {
		pr_err("%s: Dsi controller node not initialized\n", __func__);
		return -EPROBE_DEFER;
	}

	ctrl_pdev = of_find_device_by_node(dsi_ctrl_np);

	rc = mdss_dsi_regulator_init(ctrl_pdev);
	if (rc) {
		pr_err("%s: failed to init regulator, rc=%d\n",
						__func__, rc);
		return rc;
	}

	data = of_get_property(ctrl_pdev->dev.of_node,
		"qcom,platform-strength-ctrl", &len);
	if ((!data) || (len != 2)) {
		pr_err("%s:%d, Unable to read Phy Strength ctrl settings",
			__func__, __LINE__);
		return -EINVAL;
	}
	pinfo->mipi.dsi_phy_db.strength[0] = data[0];
	pinfo->mipi.dsi_phy_db.strength[1] = data[1];

	data = of_get_property(ctrl_pdev->dev.of_node,
		"qcom,platform-regulator-settings", &len);
	if ((!data) || (len != 7)) {
		pr_err("%s:%d, Unable to read Phy regulator settings",
			__func__, __LINE__);
		return -EINVAL;
	}
	for (i = 0; i < len; i++) {
		pinfo->mipi.dsi_phy_db.regulator[i]
			= data[i];
	}

	data = of_get_property(ctrl_pdev->dev.of_node,
		"qcom,platform-bist-ctrl", &len);
	if ((!data) || (len != 6)) {
		pr_err("%s:%d, Unable to read Phy Bist Ctrl settings",
			__func__, __LINE__);
		return -EINVAL;
	}
	for (i = 0; i < len; i++) {
		pinfo->mipi.dsi_phy_db.bistctrl[i]
			= data[i];
	}

	data = of_get_property(ctrl_pdev->dev.of_node,
		"qcom,platform-lane-config", &len);
	if ((!data) || (len != 45)) {
		pr_err("%s:%d, Unable to read Phy lane configure settings",
			__func__, __LINE__);
		return -EINVAL;
	}
	for (i = 0; i < len; i++) {
		pinfo->mipi.dsi_phy_db.lanecfg[i] =
			data[i];
	}

	ctrl_pdata->shared_pdata.broadcast_enable = of_property_read_bool(
		pan_node, "qcom,mdss-dsi-panel-broadcast-mode");

	dynamic_fps = of_property_read_bool(pan_node,
					  "qcom,mdss-dsi-pan-enable-dynamic-fps");
	if (dynamic_fps) {
		pinfo->dynamic_fps = true;
		data = of_get_property(pan_node,
					  "qcom,mdss-dsi-pan-fps-update", NULL);
		if (data) {
			if (!strcmp(data, "dfps_suspend_resume_mode")) {
				pinfo->dfps_update =
						DFPS_SUSPEND_RESUME_MODE;
				pr_debug("%s: dfps mode: suspend/resume\n",
								__func__);
			} else if (!strcmp(data,
					    "dfps_immediate_clk_mode")) {
				pinfo->dfps_update =
						DFPS_IMMEDIATE_CLK_UPDATE_MODE;
				pr_debug("%s: dfps mode: Immediate clk\n",
								__func__);
			} else if (!strcmp(data,
					    "dfps_immediate_porch_mode")) {
				pinfo->dfps_update =
					DFPS_IMMEDIATE_PORCH_UPDATE_MODE;
				pr_debug("%s: dfps mode: Immediate porch\n",
								__func__);
			} else {
				pr_debug("%s: dfps to default mode\n",
								__func__);
				pinfo->dfps_update =
						DFPS_SUSPEND_RESUME_MODE;
				pr_debug("%s: dfps mode: suspend/resume\n",
								__func__);
			}
		} else {
			pr_debug("%s: dfps update mode not configured\n",
								__func__);
				pinfo->dynamic_fps =
								false;
				pr_debug("%s: dynamic FPS disabled\n",
								__func__);
		}
		pinfo->new_fps = pinfo->mipi.frame_rate;
	}

	ctrl_pdata->disp_en_gpio = of_get_named_gpio(ctrl_pdev->dev.of_node,
		"qcom,platform-enable-gpio", 0);

	if (!gpio_is_valid(ctrl_pdata->disp_en_gpio)) {
		pr_err("%s:%d, Disp_en gpio not specified\n",
						__func__, __LINE__);
	} else {
		rc = gpio_request(ctrl_pdata->disp_en_gpio, "disp_enable");
		if (rc) {
			pr_err("request reset gpio failed, rc=%d\n",
			       rc);
			gpio_free(ctrl_pdata->disp_en_gpio);
			return -ENODEV;
		}
	}

#if 1
	/** ZTE_MODIYF niugang10089953 modify for enable lcd +-5V **/
	ctrl_pdata->disp_vdd_enn_gpio = of_get_named_gpio(ctrl_pdev->dev.of_node,
		"qcom,platform-vdd-enn-gpio", 0);

	if (!gpio_is_valid(ctrl_pdata->disp_vdd_enn_gpio)) {
		pr_err("%s:%d, Disp_vdd_enn gpio not specified\n",
						__func__, __LINE__);
	} else {
		rc = gpio_request(ctrl_pdata->disp_vdd_enn_gpio, "disp_vdd_enn");
		if (rc) {
			pr_err("request disp_vdd_enn gpio failed, rc=%d\n",
			       rc);
			gpio_free(ctrl_pdata->disp_vdd_enn_gpio);
			return -ENODEV;
		}
		gpio_direction_output(ctrl_pdata->disp_vdd_enn_gpio, 1);
		gpio_set_value(ctrl_pdata->disp_vdd_enn_gpio, 1);
	}

	#ifdef CONFIG_PROJECT_P862A10_ZTE
	ctrl_pdata->disp_vdd_enp_gpio = of_get_named_gpio(ctrl_pdev->dev.of_node,
		"qcom,platform-vdd-enp-gpio-a10", 0);
	#else
	ctrl_pdata->disp_vdd_enp_gpio = of_get_named_gpio(ctrl_pdev->dev.of_node,
		"qcom,platform-vdd-enp-gpio", 0);
	#endif
	
	if (!gpio_is_valid(ctrl_pdata->disp_vdd_enp_gpio)) {
		pr_err("%s:%d, Disp_vdd_enp gpio not specified\n",
						__func__, __LINE__);
	} else {
		rc = gpio_request(ctrl_pdata->disp_vdd_enp_gpio, "disp_vdd_enp");
		if (rc) {
			pr_err("request disp_vdd_enp gpio failed, rc=%d\n",
			       rc);
			gpio_free(ctrl_pdata->disp_vdd_enp_gpio);
			return -ENODEV;
		}
		gpio_direction_output(ctrl_pdata->disp_vdd_enp_gpio, 1);
		gpio_set_value(ctrl_pdata->disp_vdd_enp_gpio, 1);
	}
	/** ZTE_MODIFY niugang end **/
#endif

	if (pinfo->type == MIPI_CMD_PANEL) {
		ctrl_pdata->disp_te_gpio = of_get_named_gpio(ctrl_pdev->dev.of_node,
						"qcom,platform-te-gpio", 0);
		if (!gpio_is_valid(ctrl_pdata->disp_te_gpio)) {
			pr_err("%s:%d, Disp_te gpio not specified\n",
						__func__, __LINE__);
		}
	}

	if (gpio_is_valid(ctrl_pdata->disp_te_gpio) &&
					pinfo->type == MIPI_CMD_PANEL) {
		rc = gpio_request(ctrl_pdata->disp_te_gpio, "disp_te");
		if (rc) {
			pr_err("request TE gpio failed, rc=%d\n",
			       rc);
			gpio_free(ctrl_pdata->disp_te_gpio);
			return -ENODEV;
		}
		rc = gpio_tlmm_config(GPIO_CFG(
				ctrl_pdata->disp_te_gpio, 1,
				GPIO_CFG_INPUT,
				GPIO_CFG_PULL_DOWN,
				GPIO_CFG_2MA),
				GPIO_CFG_ENABLE);

		if (rc) {
			pr_err("%s: unable to config tlmm = %d\n",
				__func__, ctrl_pdata->disp_te_gpio);
			gpio_free(ctrl_pdata->disp_te_gpio);
			return -ENODEV;
		}

		rc = gpio_direction_input(ctrl_pdata->disp_te_gpio);
		if (rc) {
			pr_err("set_direction for disp_en gpio failed, rc=%d\n",
			       rc);
			gpio_free(ctrl_pdata->disp_te_gpio);
			return -ENODEV;
		}
		pr_debug("%s: te_gpio=%d\n", __func__,
					ctrl_pdata->disp_te_gpio);
	}

	ctrl_pdata->rst_gpio = of_get_named_gpio(ctrl_pdev->dev.of_node,
			 "qcom,platform-reset-gpio", 0);
	if (!gpio_is_valid(ctrl_pdata->rst_gpio)) {
		pr_err("%s:%d, reset gpio not specified\n",
						__func__, __LINE__);
	} else {
		rc = gpio_request(ctrl_pdata->rst_gpio, "disp_rst_n");
		if (rc) {
			pr_err("request reset gpio failed, rc=%d\n",
				rc);
			gpio_free(ctrl_pdata->rst_gpio);
			if (gpio_is_valid(ctrl_pdata->disp_en_gpio))
				gpio_free(ctrl_pdata->disp_en_gpio);
			return -ENODEV;
		}
	}

	if (pinfo->mode_gpio_state != MODE_GPIO_NOT_VALID) {

		ctrl_pdata->mode_gpio = of_get_named_gpio(
					ctrl_pdev->dev.of_node,
					"qcom,platform-mode-gpio", 0);
		if (!gpio_is_valid(ctrl_pdata->mode_gpio)) {
			pr_info("%s:%d, mode gpio not specified\n",
							__func__, __LINE__);
		} else {
			rc = gpio_request(ctrl_pdata->mode_gpio, "panel_mode");
			if (rc) {
				pr_err("request panel mode gpio failed,rc=%d\n",
									rc);
				gpio_free(ctrl_pdata->mode_gpio);
				if (gpio_is_valid(ctrl_pdata->disp_en_gpio))
					gpio_free(ctrl_pdata->disp_en_gpio);
				if (gpio_is_valid(ctrl_pdata->rst_gpio))
					gpio_free(ctrl_pdata->rst_gpio);
				if (gpio_is_valid(ctrl_pdata->disp_te_gpio))
					gpio_free(ctrl_pdata->disp_te_gpio);
				return -ENODEV;
			}
		}
	}

	if (mdss_dsi_clk_init(ctrl_pdev, ctrl_pdata)) {
		pr_err("%s: unable to initialize Dsi ctrl clks\n", __func__);
		return -EPERM;
	}

	if (mdss_dsi_retrieve_ctrl_resources(ctrl_pdev,
					     pinfo->pdest,
					     ctrl_pdata)) {
		pr_err("%s: unable to get Dsi controller res\n", __func__);
		return -EPERM;
	}

	ctrl_pdata->panel_data.event_handler = mdss_dsi_event_handler;
	ctrl_pdata->check_status = mdss_dsi_bta_status_check;

	if (ctrl_pdata->bklt_ctrl == BL_PWM)
		mdss_dsi_panel_pwm_cfg(ctrl_pdata);

	mdss_dsi_ctrl_init(ctrl_pdata);
	/*
	 * register in mdp driver
	 */

	ctrl_pdata->pclk_rate = mipi->dsi_pclk_rate;
	ctrl_pdata->byte_clk_rate = pinfo->clk_rate / 8;
	pr_debug("%s: pclk=%d, bclk=%d\n", __func__,
			ctrl_pdata->pclk_rate, ctrl_pdata->byte_clk_rate);

	ctrl_pdata->ctrl_state = CTRL_STATE_UNKNOWN;

	if (pinfo->cont_splash_enabled) {
		pinfo->panel_power_on = 1;
		rc = mdss_dsi_panel_power_on(&(ctrl_pdata->panel_data), 1);
		if (rc) {
			pr_err("%s: Panel power on failed\n", __func__);
			return rc;
		}

		mdss_dsi_clk_ctrl(ctrl_pdata, 1);
		ctrl_pdata->ctrl_state |=
			(CTRL_STATE_PANEL_INIT | CTRL_STATE_MDP_ACTIVE);
	} else {
		pinfo->panel_power_on = 0;
	}

	rc = mdss_register_panel(ctrl_pdev, &(ctrl_pdata->panel_data));
	if (rc) {
		pr_err("%s: unable to register MIPI DSI panel\n", __func__);
		if (ctrl_pdata->rst_gpio)
			gpio_free(ctrl_pdata->rst_gpio);
		if (gpio_is_valid(ctrl_pdata->disp_en_gpio))
			gpio_free(ctrl_pdata->disp_en_gpio);
		return rc;
	}

	if (pinfo->pdest == DISPLAY_1) {
		mdss_debug_register_base("dsi0",
			ctrl_pdata->ctrl_base, ctrl_pdata->reg_size);
		ctrl_pdata->ndx = 0;
	} else {
		mdss_debug_register_base("dsi1",
			ctrl_pdata->ctrl_base, ctrl_pdata->reg_size);
		ctrl_pdata->ndx = 1;
	}

	pr_debug("%s: Panel data initialized\n", __func__);
	return 0;
}

static const struct of_device_id mdss_dsi_ctrl_dt_match[] = {
	{.compatible = "qcom,mdss-dsi-ctrl"},
	{}
};
MODULE_DEVICE_TABLE(of, mdss_dsi_ctrl_dt_match);

static struct platform_driver mdss_dsi_ctrl_driver = {
	.probe = mdss_dsi_ctrl_probe,
	.remove = __devexit_p(mdss_dsi_ctrl_remove),
	.shutdown = NULL,
	.driver = {
		.name = "mdss_dsi_ctrl",
		.of_match_table = mdss_dsi_ctrl_dt_match,
	},
};

static int mdss_dsi_register_driver(void)
{
	return platform_driver_register(&mdss_dsi_ctrl_driver);
}

static int __init mdss_dsi_driver_init(void)
{
	int ret;

	ret = mdss_dsi_register_driver();
	if (ret) {
		pr_err("mdss_dsi_register_driver() failed!\n");
		return ret;
	}

	return ret;
}
module_init(mdss_dsi_driver_init);

static void __exit mdss_dsi_driver_cleanup(void)
{
	iounmap(mdss_dsi_base);
	platform_driver_unregister(&mdss_dsi_ctrl_driver);
}
module_exit(mdss_dsi_driver_cleanup);

MODULE_LICENSE("GPL v2");
MODULE_DESCRIPTION("DSI controller driver");
MODULE_AUTHOR("Chandan Uddaraju <chandanu@codeaurora.org>");
