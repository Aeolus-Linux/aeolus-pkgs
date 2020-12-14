#!/bin/bash -x

BWDIR="$(pwd)"
echo ${BWDIR}
PKGDIRBW="$BWDIR/osmium-pkgs"
sudo pacman -Syu --noconfirm --needed
sudo pacman -Sy --needed --noconfirm meson coreutils kmod linux-firmware git
sudo pacman -Sy --needed --noconfirm  fakeroot extra-cmake-modules autogen cmake base-devel
sudo chmod -R 777 .
sudo mkdir -p /go/pkg/mod/cache/download/github.com
sudo chmod -R 777 /go
sudo chmod -R 777 /go/pkg/mod/cache/download/github.com
sudo mkdir -p /.cache/go-build
sudo chmod -R 777 /.cache
sudo chmod -R 777 /.cache/go-build
sudo chmod -R 777 osmium-pkgs
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si --noconfirm
#yay -Sy --needed --noconfirm plymouth findutils openbox-patched thrash-protect perl-linux-desktopfiles mkinitcpio-openswap ckbcomp
#cd ..
#rm -rf yay
cd $BWDIR

