


make CROSS_COMPILE=arm-linux-gnueabi- ARCH=arm uImage
make CROSS_COMPILE=arm-linux-gnueabi- ARCH=arm modules
make CROSS_COMPILE=arm-linux-gnueabi- ARCH=arm INSTALL_MOD_PATH=$HOME/kobo/modules modules_install
