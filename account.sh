DIR="$(pwd)"
echo test1
pacman -Sy autogen --noconfirm 
echo test2
tee -a /etc/sudoers > /dev/null <<EOT
nobody    ALL=(ALL) NOPASSWD:ALL
EOT
chmod -R 777 .
su -s /bin/sh nobody -c "./main.sh"
