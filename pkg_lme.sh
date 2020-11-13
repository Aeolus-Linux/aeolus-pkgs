#!/usr/bin/env bash

## This script will generate osmium pkg-files.

## Dirs
DIR="$(pwd)"
PKGDIR="$DIR/osmium-pkgs"

## Packages
PKGS=($(ls $PKGDIR))

cd $PKGDIR
cd osmium-about-dev
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-about-dev/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd osmium-fonts
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-fonts/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd osmium-get-started
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-get-started/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd osmium-grid-icon-theme
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-grid-icon-theme/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd osmium-gtk-themepack
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-gtk-themepack/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd osmium-hybrid-icon-theme
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-hybrid-icon-theme/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd osmium-lxdm-theme
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-lxdm-theme/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd osmium-lxdm-theme-circuit
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-lxdm-theme-circuit/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd osmium-lxdm-theme-gears
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-lxdm-theme-gears/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd osmium-pixmaps
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-pixmaps/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd osmium-tint2-configs
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-tint2-configs/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd osmium-wallpapers
makepkg -sf
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-wallpapers/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
git clone https://github.com/Osmium-Linux/nvidia-all-noninteractive.git
cd nvidia-all-noninteractive
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/nvidia-all-noninteractive/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/nvidia-all-noninteractive
cd $PKGDIR
git clone https://aur.archlinux.org/pygtk.git
cd pygtk
makepkg -si --noconfirm
cd $DIR
rm -rf pygtk
mv ./osmium-pkgs/pygtk/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
git clone https://github.com/Osmium-Linux/osmium-plymouth-theme.git
cd osmium-plymouth-theme
makepkg -sf
cd $DIR
mv ./osmium-pkgs/osmium-plymouth-theme/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/osmium-plymouth-theme/
