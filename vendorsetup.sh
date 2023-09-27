echo 'Starting to clone stuffs needed to build for marble'


# Vendor
echo 'Cloning vendor tree'
rm -rf vendor/xiaomi/marble && git clone https://github.com/JYRRC/vendor_xiaomi_marble.git -b thirteen vendor/xiaomi/marble


# Kernel
echo 'Cloning kernel tree'
git clone https://github.com/JYRRC/device_xiaomi_marble-kernel.git -b thirteen device/xiaomi/marble-kernel


# Xiaomi
echo 'Cloning hardware xiaomi'
rm -rf hardware/xiaomi && git clone https://github.com/JYRRC/hardware_xiaomi.git hardware/xiaomi


# Gapps
#echo 'Cloning gapps'
#git clone https://gitlab.com/marble9121630/vendor_gms.git -b 13-lineage vendor/gms


# Camera
echo 'Cloning Leica Camera'
git clone https://gitlab.com/JYRRC/proprietary_vendor_xiaomi_camera.git -b 13 vendor/xiaomi/camera


echo 'delete vendorsetup.sh from device tree once this is done'
