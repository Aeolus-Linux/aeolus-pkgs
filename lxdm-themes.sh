#!/usr/bin/env bash

## This script will generate osmium pkg-files.

## Dirs
DIR="$(pwd)"
PKGDIR="$DIR/osmium-pkgs"

## Packages
PKGS=($(ls $PKGDIR))

sudo pacman -Sy --noconfirm lxdm-gtk3 adapta-gtk-theme arc-gtk-theme

cd $PKGDIR
cd osmium-lxdm-theme
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-lxdm-theme/*.pkg.tar.zst ./w86_64/
cd $PKGDIR
cd osmium-lxdm-theme-circuit
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-lxdm-theme-circuit/*.pkg.tar.zst ./w86_64/
cd $PKGDIR
cd osmium-lxdm-theme-gears
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-lxdm-theme-gears/*.pkg.tar.zst ./w86_64/
