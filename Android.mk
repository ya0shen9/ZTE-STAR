ifneq ($(filter s2002,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wcd9306; \
    ln -sf /data/misc/audio/wcd9320_anc.bin \
    $(TARGET_OUT_ETC)/firmware/wcd9306/wcd9306_anc.bin; \
    ln -sf /data/misc/audio/mbhc.bin \
    $(TARGET_OUT_ETC)/firmware/wcd9306/wcd9306_mbhc.bin)

# Create a link for the WCNSS config file, which ends up as a writable
# version in /data/misc/wifi
$(shell mkdir -p $(TARGET_OUT)/etc/firmware/wlan/prima; \
    ln -sf /data/misc/wifi/WCNSS_qcom_cfg.ini \
    	    $(TARGET_OUT)/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini; \
    ln -sf /system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
	    $(TARGET_OUT)/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin)

# Create /firmware links
FIRMWARE_IMAGES := \
    adsp.b00 adsp.b01 adsp.b02 adsp.b03 adsp.b04 adsp.b05 adsp.b06 adsp.b07 adsp.b08 adsp.b09 adsp.b10 adsp.b11 adsp.b12 adsp.mdt \
    cmnlib.b00 cmnlib.b01 cmnlib.b02 cmnlib.b03 cmnlib.mdt \
    isdbtmm.b00 isdbtmm.b01 isdbtmm.b02 isdbtmm.b03 isdbtmm.mdt \
    mba.b00 mba.mdt \
    mc_v2.b00 mc_v2.b01 mc_v2.b02 mc_v2.b03 mc_v2.mdt \
    modem.b00 modem.b01 modem.b02 modem.b03 modem.b04 modem.b05 modem.b06 modem.b07 modem.b08 modem.b09 modem.b10 modem.b11 modem.b12 modem.b13 modem.b14 modem.b15 modem.b16 modem.b17 modem.b18 modem.b19 modem.b20 modem.b21 modem.b22 modem.b23 modem.b24 modem.b25 modem.mdt \
    playread.b00 playread.b01 playread.b02 playread.b03 playread.mdt \
    venus.b00 venus.b01 venus.b02 venus.b03 venus.b04 venus.mdt \
    wcnss.b00 wcnss.b01 wcnss.b02 wcnss.b03 wcnss.b04 wcnss.b05 wcnss.b06 wcnss.b07 wcnss.b08 wcnss.b09 wcnss.mdt \
    widevine.b00 widevine.b01 widevine.b02 widevine.b03 widevine.mdt \

FIRMWARE_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_IMAGES)))
$(FIRMWARE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

FIRMWARE_KEYMASTER_IMAGES := \
    keymaster.b00 keymaster.b01 keymaster.b02 keymaster.b03 keymaster.mdt

FIRMWARE_KEYMASTER_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/keymaster/,$(notdir $(FIRMWARE_KEYMASTER_IMAGES)))
$(FIRMWARE_KEYMASTER_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Keymaster Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@
	
ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_SYMLINKS)

endif
