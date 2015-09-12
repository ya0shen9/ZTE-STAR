// Overload this file in your device specific config if you need
// to add extra camera parameters.
// A typical file would look like this:
/*
 * Copyright (C) 2014 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#define CAMERA_PARAMETERS_EXTRA_C \
	const char CameraParameters::KEY_SUPPORTED_ZTE_BURST_NUM[] = "zte-burst-num-values"; \
	const char CameraParameters::KEY_ZTE_BURST_NUM[] = "zte-burst-num"; \
	const char CameraParameters::KEY_SUPPORTED_ZTE_BLINK_MODE[] = "zte-blink-mode-values"; \
	const char CameraParameters::KEY_ZTE_BLINK_MODE[] = "zte-blink-mode"; \
	const char CameraParameters::KEY_SUPPORTED_ZTE_SMILE_MODE[] = "zte-smile-mode-values"; \
	const char CameraParameters::KEY_ZTE_SMILE_MODE[] = "zte-smile-mode"; \
	const char CameraParameters::KEY_SUPPORTED_ZTE_HDR_MODES[] = "zte-hdr-mode-values"; \
	const char CameraParameters::KEY_ZTE_HDR_MODE[] = "zte-hdr-mode"; \
	const char CameraParameters::ZTE_HDR_MODE_HDR[] = "hdr"; \
	const char CameraParameters::ZTE_HDR_MODE_OFF[] = "off";

#define CAMERA_PARAMETERS_EXTRA_H \
	static const char KEY_ARCSOFT_SKIN_BRIGHT_LEVEL[]; \
	static const char KEY_SUPPORTED_ZTE_BURST_NUM[]; \
	static const char KEY_ZTE_BURST_NUM[]; \
	static const char KEY_SUPPORTED_ZTE_BLINK_MODE[]; \
	static const char KEY_ZTE_BLINK_MODE[]; \
	static const char KEY_SUPPORTED_ZTE_SMILE_MODE[]; \
	static const char KEY_ZTE_SMILE_MODE[]; \
	static const char KEY_SUPPORTED_ZTE_HDR_MODES[]; \
	static const char KEY_ZTE_HDR_MODE[]; \
	static const char ZTE_HDR_MODE_OFF[]; \
	static const char ZTE_HDR_MODE_HDR[];
