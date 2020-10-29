#!/usr/bin/env bash

BWDIR="$(pwd)"
pacman -Syu --needed --noconfirm --noprogressbar 
pacman -S --needed --noconfirm sudo 
useradd -p builderbob -c builderbob -m builderbob
echo "builderbob:builderbob"|chpasswd
su builderbob
sudo pacman -Syu --noconfirm
sudo pacman -Sy --needed --noconfirm coreutils kmod linux-firmware bc git graphviz imagemagickkmod git fakeroot libelf pahole python-spinx_rtd_theme xmlto crda autogen cmake python-sphinx grub git meson perl fish tmux libglade python2-cairo python2-gobject2 python2-numpy  vim zsh git go i3-wm python2 python pacman-contrib expac fzf libpulse libmpdclient perl-data-dump perl sudo fakeroot gtk2-perl perl-file-desktopentry perl-gtk3 efibootmgr base-devel python rsync fuse2 xorg-xauth libxinerama gtk3 libxrandr libxcursor imlib2 libqalculate hicolor-icon-theme gtk-update-icon-cache git sudo fakeroot go binutils rofi  docbook-xsl libdrm patch autoconf automake gcc bdf-unifont help2man ttf-dejavu
sudo chmod -R 777 .
sudo mkdir -p /go/pkg/mod/cache/download/github.com
sudo chmod -R 777 /go
sudo chmod -R 777 /go/pkg/mod/cache/download/github.com
sudo mkdir -p /.cache/go-build
sudo chmod -R 777 /.cache
sudo chmod -R 777 /.cache/go-build
sudo chmod +x ./pkg_aur.sh
sudo chmod +x ./pkg_lme.sh
sudo chmod +x ./x86_64/update.sh
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
yay -Sy --noconfirm plymouth findutils openbox-patched thrash-protect perl-linux-desktopfiles mkinitcpio-openswap ckbcomp
cd ..
git clone https://aur.archlinux.org/pygtk.git
cd pygtk
makepkg -si --noconfirm
cd ..
cd aeolus-pkgs
git clone https://github.com/Aeolus-Linux/nvidia-all-noninteractive.git
git clone https://github.com/Aeolus-Linux/linux-tkg-noninteractive.git
cd ..
sudo chmod -R 777 .
chmod +x manual-build.sh
sh ./manual-build.sh
#sh ./pkg_aur.sh
pwd
sudo chmod -R 777 .
cd ${BWDIR}
pwd
sh ./pkg_lme
sudo chmod -R 777 .
cd ${BWDIR}
pwd
sh ./x86_64/update.sh
pwd