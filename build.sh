#!/usr/bin/env bash

BWDIR="$(pwd)"
echo ${BWDIR}
PKGDIRBW="$BWDIR/osmium-pkgs"
sudo pacman -Syu --noconfirm --needed
sudo pacman -Sy --needed --noconfirm meson coreutils kmod linux-firmware git graphviz
sudo pacman -Sy --needed --noconfirm  fakeroot extra-cmake-modules autogen cmake 
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
