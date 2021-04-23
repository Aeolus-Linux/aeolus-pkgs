#!/bin/bash -x

## This script will generate osmium pkg-files.

## Dirs
DIR="$(pwd)"
PKGDIR="$DIR/osmium-pkgs"

## Packages
PKGS=($(ls $PKGDIR))

cd $PKGDIR
cd osmium-fonts
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-fonts/*.pkg.tar.zst ./w86_64/
cd $PKGDIR
cd osmium-gtk-themepack
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-gtk-themepack/*.pkg.tar.zst ./w86_64/
cd $PKGDIR
cd osmium-hybrid-icon-theme
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-hybrid-icon-theme/*.pkg.tar.zst ./w86_64/
cd $PKGDIR
cd osmium-grid-icon-theme
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-grid-icon-theme/*.pkg.tar.zst ./w86_64/
cd $PKGDIR
cd osmium-pixmaps
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-pixmaps/*.pkg.tar.zst ./w86_64/
cd $PKGDIR
cd osmium-tint2-configs
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-tint2-configs/*.pkg.tar.zst ./w86_64/
cd $PKGDIR
cd osmium-wallpapers
makepkg -sf
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-wallpapers/*.pkg.tar.zst ./w86_64/
cd $PKGDIR
cd osmium-plymouth
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-plymouth/*.pkg.tar.zst ./w86_64/
cd $PKGDIR
cd osmium-openbox-skel
makepkg -sf
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-openbox-skel/*.pkg.tar.zst ./w86_64/

git clone --depth 1 https://github.com/Osmium-Linux/linux-tkg-noninteractive
cp ./linux-tkg-noninteractive/output/*.pkg.tar.zst ./w86_64/
rm -rf linux-tkg-noninteractive 
