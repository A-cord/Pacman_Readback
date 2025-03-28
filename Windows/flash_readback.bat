@echo off
echo Erasing metadata and userdata...
fastboot erase metadata
fastboot erase userdata

echo.
echo Flashing boot images...
fastboot flash boot_a boot_a.img
fastboot flash dtbo_a dtbo_a.img
fastboot flash init_boot_a init_boot_a.img
fastboot flash vendor_boot_a vendor_boot_a.img
fastboot flash boot_b boot_b.img
fastboot flash dtbo_b dtbo_b.img
fastboot flash init_boot_b init_boot_b.img
fastboot flash vendor_boot_b vendor_boot_b.img

echo.
echo Flashing vbmeta images...
fastboot flash vbmeta_a vbmeta_a.img
fastboot flash vbmeta_system_a vbmeta_system_a.img
fastboot flash vbmeta_vendor_a vbmeta_vendor_a.img
fastboot flash vbmeta_b vbmeta_b.img
fastboot flash vbmeta_system_b vbmeta_system_b.img
fastboot flash vbmeta_vendor_b vbmeta_vendor_b.img

echo.
echo Flashing firmware partitions for slot A...
fastboot flash apusys_a apusys_a.img
fastboot flash audio_dsp_a audio_dsp_a.img
fastboot flash ccu_a ccu_a.img
fastboot flash connsys_bt_a connsys_bt_a.img
fastboot flash connsys_gnss_a connsys_gnss_a.img
fastboot flash connsys_wifi_a connsys_wifi_a.img
fastboot flash dpm_a dpm_a.img
fastboot flash gpueb_a gpueb_a.img
fastboot flash gz_a gz_a.img
fastboot flash lk_a lk_a.img
fastboot flash logo_a logo_a.img
fastboot flash mcupm_a mcupm_a.img
fastboot flash mcf_ota_a mcf_ota_a.img
fastboot flash md1img_a md1img_a.img
fastboot flash mvpu_algo_a mvpu_algo_a.img
fastboot flash pi_img_a pi_img_a.img
fastboot flash scp_a scp_a.img
fastboot flash spmfw_a spmfw_a.img
fastboot flash sspm_a sspm_a.img
fastboot flash tee_a tee_a.img
fastboot flash vcp_a vcp_a.img

echo.
echo Flashing firmware partitions for slot B...
fastboot flash apusys_b apusys_b.img
fastboot flash audio_dsp_b audio_dsp_b.img
fastboot flash ccu_b ccu_b.img
fastboot flash connsys_bt_b connsys_bt_b.img
fastboot flash connsys_gnss_b connsys_gnss_b.img
fastboot flash connsys_wifi_b connsys_wifi_b.img
fastboot flash dpm_b dpm_b.img
fastboot flash gpueb_b gpueb_b.img
fastboot flash gz_b gz_b.img
fastboot flash lk_b lk_b.img
fastboot flash logo_b logo_b.img
fastboot flash mcupm_b mcupm_b.img
fastboot flash mcf_ota_b mcf_ota_b.img
fastboot flash md1img_b md1img_b.img
fastboot flash mvpu_algo_b mvpu_algo_b.img
fastboot flash pi_img_b pi_img_b.img
fastboot flash scp_b scp_b.img
fastboot flash spmfw_b spmfw_b.img
fastboot flash sspm_b sspm_b.img
fastboot flash tee_b tee_b.img
fastboot flash vcp_b vcp_b.img

echo.
echo Setting active slot to B...
fastboot --set-active=b

echo.
echo Rebooting device...
fastboot reboot

echo.
echo Flashing complete! Press any key to close...
pause >nul
