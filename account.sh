DIR="$(pwd)"
DEPS="$(cat ${DIR}/deps.list)"
pacman -Syu --needed "$(cat ${DIR{/deps.list)" --noconfirm --noprogressbar # Install packages we'll need to build
tee -a /etc/sudoers > /dev/null <<EOT
nobody    ALL=(ALL) NOPASSWD:ALL
EOT
chmod -R 777 .
su -s /bin/sh nobody -c "./main.sh"
