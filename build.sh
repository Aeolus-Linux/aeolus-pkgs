#!/usr/bin/env bash

BWDIR="$(pwd)"
echo ${BWDIR}
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
git clone https://github.com/Aeolus-Linux/linux-tkg-noninteractive.git
https://aur.archlinux.org/polybar.git
cd ..
sudo chmod -R 777 .
sudo mkdir -p aur-pkgs
sudo chmod -R aur-pkgs
sudo chmod +x manual-build.sh
sh ./manual-build.sh
#sh ./pkg_aur.sh
pwd
sudo chmod -R 777 .
cd ${BWDIR}
pwd
sh ./pkg_lme.sh
sudo chmod -R 777 .
cd ${BWDIR}
pwd
sh ./x86_64/update.sh
pwd