#!/usr/bin/env bash

BWDIR="$(pwd)"
echo ${BWDIR}
PKGDIRBW="$BWDIR/aeolus-pkgs"
sudo pacman -Sy --needed --noconfirm coreutils kmod linux-firmware bc git graphviz libinput imagemagick kmod git fakeroot libelf extra-cmake-modules pahole python-sphinx_rtd_theme xmlto crda autogen cmake 
sudo pacman -Sy --needed --noconfirm python-sphinx grub git meson perl fish libevdev tmux libwacom libglade python2-cairo boost python2-gobject2 qt5-tools python2-numpy  vim zsh git go i3-wm python2 python pacman-contrib expac fzf libpulse 
sudo pacman -Sy --needed --noconfirm libmpdclient boost-libs perl-data-dump perl sudo fakeroot mtdev gtk2-perl  tslib xorg-xset perl-file-desktopentry perl-gtk3 qt5-translations efibootmgr boost-libs python rsync fuse2 xorg-xauth libxinerama gtk3 libxrandr libxcursor 
sudo pacman -Sy --needed --noconfirm man-pages imlib2 double-conversion base-devel xmlto docbook-xsl qt5-base xdg-utils inetutils bc pahole patchutils flex python-sphinx python-sphinx_rtd_theme graphviz imagemagick inetutils patchutils libqalculate hicolor-icon-theme gtk-update-icon-cache git sudo fakeroot go binutils rofi  docbook-xsl libdrm patch autoconf automake gcc bdf-unifont help2man ttf-dejavu

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
sudo chmod -R 777 aeolus-pkgs
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
#git clone https://github.com/Aeolus-Linux/linux-tkg-noninteractive.git
git clone https://aur.archlinux.org/polybar.git
git clone https://github.com/Aeolus-Linux/calamares-makepkg.git
cd ..
sudo chmod -R 777 .
sudo mkdir -p aur-pkgs
sudo chmod -R 777 aur-pkgs
sudo chmod +x aur-build.sh
sh ./aur-build.sh
sh ./pkg_aur.sh 
pwd
sudo chmod -R 777 .
cd ${BWDIR}
pwd
sh ./pkg_lme.sh
cd aeolus-pkgs
git clone --depth 1 https://github.com/Aeolus-Linux/calamares-makepkg.git
git clone --depth 1 hhttps://github.com/Aeolus-Linux/plymouth-theme-deus_ex-git.git
cd calamares-makepkg
dir
makepkg -s 
mv calamares-*.*.*.*.tar.gz calamares-aeolus.pkg.tar.zst 
dir
pwd
cd ..
cd plymouth-theme-deus_ex-git.git
makepkg -s 
pwd
dir
cd ..
cd ..
mv ./aeolus-pkgs/plymouth-themes-adi1090x-pack2-git.git/*.pkg.tar.zst ./x86_64
mv ./aeolus-pkgs/calamares-makepkg/*.pkg.tar.zst ./x86_64
dir
sudo chmod -R 777 .
cd ${BWDIR}
pwd
sh ./x86_64/update.sh
pwd