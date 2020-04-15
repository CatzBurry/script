rm -rf device/asus/X01BD
rm -rf kernel/asus/sdm660
rm -rf vendor/asus/X01BD
git clone https://github.com/SuperiorOS-Devices/device_asus_X01BD.git -b 10 device/asus/X01BD
git clone https://github.com/AOSPA/android_kernel_asus_sdm660 -b quartz kernel/asus/sdm660
git clone https://github.com/SuperiorOS-Devices/vendor_asus_X01BD.git -b 10 vendor/asus
make clean
. build/envsetup.sh
export SUPERIOR_OFFICIAL=true
lunch superior_X01BD-userdebug
make bacon
