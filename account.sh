pacman -Syu --needed --noconfirm --noprogressbar 
pacman -Sy autogen efibootmgr base-devel python rsync git sudo fakeroot go binutils rofi  docbook-xsl libdrm patch autoconf automake gcc bdf-unifont help2man ttf-dejavu --needed --noconfirm --noprogressbar 
tee -a /etc/sudoers > /dev/null <<EOT
nobody    ALL=(ALL) NOPASSWD:ALL
EOT
chmod -R 777 .
su -s /bin/sh nobody -c "./main.sh"
