#!/usr/bin/env bash

## This script will generate aeolus pkg-files.

## Dirs
DIR="$(pwd)"
PKGDIR="$DIR/aeolus-pkgs"

## Packages
PKGS=($(ls $PKGDIR))

cd $PKGDIR
cd aeolus-about-dev
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./aeolus-pkgs/aeolus-about-dev/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd aeolus-fonts
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./aeolus-pkgs/aeolus-fonts/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd aeolus-get-started
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./aeolus-pkgs/aeolus-get-started/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd aeolus-grid-icon-theme
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./aeolus-pkgs/aeolus-grid-icon-theme/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd aeolus-gtk-themepack
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./aeolus-pkgs/aeolus-gtk-themepack/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd aeolus-hybrid-icon-theme
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./aeolus-pkgs/aeolus-hybrid-icon-theme/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd aeolus-lxdm-theme
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./aeolus-pkgs/aeolus-lxdm-theme/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd aeolus-lxdm-theme-circuit
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./aeolus-pkgs/aeolus-lxdm-theme-circuit/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd aeolus-lxdm-theme-gears
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./aeolus-pkgs/aeolus-lxdm-theme-gears/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd aeolus-pixmaps
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./aeolus-pkgs/aeolus-pixmaps/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd aeolus-tint2-configs
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./aeolus-pkgs/aeolus-tint2-configs/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
cd aeolus-wallpapers
makepkg -sf
rm -rf ./pkg/
cd $DIR
mv ./aeolus-pkgs/aeolus-wallpapers/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
git clone https://github.com/Aeolus-Linux/nvidia-all-noninteractive.git
cd nvidia-all-noninteractive
makepkg -sf 
cd $DIR
rm -rf nvidia-all-noninteractive
mv ./aeolus-pkgs/nvidia-all-noninteractive/*.pkg.tar.zst ./x86_64/
