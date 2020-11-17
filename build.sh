#!/usr/bin/env bash

BWDIR="$(pwd)"
echo ${BWDIR}
PKGDIRBW="$BWDIR/osmium-pkgs"
sudo pacman -Syy --needed --noconfirm meson coreutils kmod linux-firmware bc git graphviz libinput imagemagick kmod git fakeroot libelf extra-cmake-modules pahole python-sphinx_rtd_theme xmlto crda autogen cmake 
sudo pacman -Syy --needed --noconfirm python-sphinx grub git openbox-patched inkscape optipng sassc gnome-themes-extra gtk-engine-murrine meson perl fish libbsd libevdev tmux libwacom libglade python2-cairo boost python2-gobject2 qt5-tools python2-numpy  vim zsh git go i3-wm python2 python pacman-contrib expac fzf libpulse 
sudo pacman -Syy --needed --noconfirm libmpdclient boost-libs perl-data-dump perl sudo fakeroot mtdev gtk2-perl  tslib xorg-xset perl-file-desktopentry perl-gtk3 qt5-translations efibootmgr boost-libs python rsync fuse2 xorg-xauth libxinerama gtk3 libxrandr libxcursor 
sudo pacman -Syu --needed --noconfirm man-pages imlib2 double-conversion base-devel xmlto docbook-xsl qt5-base xdg-utils inetutils bc pahole patchutils flex python-sphinx python-sphinx_rtd_theme graphviz imagemagick inetutils patchutils libqalculate hicolor-icon-theme gtk-update-icon-cache git sudo fakeroot go binutils rofi  docbook-xsl libdrm patch autoconf automake gcc bdf-unifont help2man ttf-dejavu
sudo chmod -R 777 .
sudo mkdir -p /go/pkg/mod/cache/download/github.com
sudo chmod -R 777 /go
sudo chmod -R 777 /go/pkg/mod/cache/download/github.com
sudo mkdir -p /.cache/go-build
sudo chmod -R 777 /.cache
sudo chmod -R 777 /.cache/go-build
sudo chmod +x ./pkg_aur.sh
sudo chmod +x ./pkg_lme.sh
sudo chmod -R 777 osmium-pkgs
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
yay -Sy --needed --noconfirm plymouth findutils openbox-patched thrash-protect perl-linux-desktopfiles mkinitcpio-openswap ckbcomp
cd ..
rm -rf yay
sudo chmod -R 777 .
sudo chmod -R 777 aur-pkgs
sudo chmod +x aur-build.sh
sh aur-build.sh
pwd
sudo chmod -R 777 .
cd ${BWDIR}
pwd
sh ./pkg_lme.sh
cd osmium-pkgs
sudo chmod -R 777 .
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -s --noconfirm
dir
cd ${BWDIR}
cp ./osmium-pkgs/yay/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/yay/
pwd
cd ./x86_64 
rm osmium-pkgs.*
repo-add -n osmium-pkgs.db.tar.gz *.pkg.tar.zst
cd $BWDIR
pwd
