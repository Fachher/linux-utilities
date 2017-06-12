apt-get install build-essential linux-headers-generic git -y
mkdir ~/RTL8188EU
cd ~/RTL8188EU
git clone git://github.com/lwfinger/rtl8188eu
make
make install
cp -v ~/RTL8188EU/rtl8188eu/rtl8188eufw.bin /lib/firmware/rtlwifi/
depmod -a
update-initramfs -u
