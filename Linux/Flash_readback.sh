#!/bin/bash

echo "Erasing metadata and userdata..."
fastboot erase metadata
fastboot erase userdata

echo
echo "Flashing boot images..."
fastboot flash boot_a boot_a.img
fastboot flash dtbo_a dtbo_a.img
fastboot flash init_boot_a init_boot_a.img
fastboot flash vendor_boot_a vendor_boot_a.img
fastboot flash boot_b boot_b.img
fastboot flash dtbo_b dtbo_b.img
fastboot flash init_boot_b init_boot_b.img
fastboot flash vendor_boot_b vendor_boot_b.img

echo
echo "Flashing vbmeta images..."
fastboot flash vbmeta_a vbmeta_a.img
fastboot flash vbmeta_system_a vbmeta_system_a.img
fastboot flash vbmeta_vendor_a vbmeta_vendor_a.img
fastboot flash vbmeta_b vbmeta_b.img
fastboot flash vbmeta_system_b vbmeta_system_b.img
fastboot flash vbmeta_vendor_b vbmeta_vendor_b.img

echo
echo "Flashing firmware partitions for slot A..."
for part in apusys audio_dsp ccu connsys_bt connsys_gnss connsys_wifi dpm gpueb gz lk logo mcupm mcf_ota md1img mvpu_algo pi_img scp spmfw sspm tee vcp; do
    fastboot flash ${part}_a ${part}_a.img
done

echo
echo "Flashing firmware partitions for slot B..."
for part in apusys audio_dsp ccu connsys_bt connsys_gnss connsys_wifi dpm gpueb gz lk logo mcupm mcf_ota md1img mvpu_algo pi_img scp spmfw sspm tee vcp; do
    fastboot flash ${part}_b ${part}_b.img
done

echo
echo "Setting active slot to B..."
fastboot --set-active=b

echo
echo "Rebooting device to fastbootd..."
fastboot reboot fastbootd

echo
echo "Flashing logical partition, this may take few minutes depending on your system..."
fastboot flash super super.img

echo
echo "Setting active slot to B..."
fastboot --set-active=b

echo
echo "Rebooting device..."
fastboot reboot

echo
echo "Flashing complete!"
