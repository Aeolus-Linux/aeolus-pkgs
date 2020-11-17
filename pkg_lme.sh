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
cd osmium-plymouth
makepkg -sf 
rm -rf ./pkg/
cd $DIR
mv ./osmium-pkgs/osmium-plymouth/*.pkg.tar.zst ./x86_64/
cd $PKGDIR
git clone https://github.com/Osmium-Linux/nvidia-all-noninteractive.git
cd nvidia-all-noninteractive
makepkg -sfd
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
cd $PKGDIR
git clone https://github.com/Frogging-Family/nvidia-all.git
cd nvidia-all
sed -i 's/install -D -m755 "libnvoptix.so.${pkgver}"/#deleted/g' PKGBUILD
rm -rf customization.cfg
git clone https://github.com/Osmium-Linux/nvidia-all-noninteractive.git
cd ..
cp ./nvidia-all/nvidia-all-noninteractive/fileskept/customization.cfg ./nvidia-all
cd nvidia-all
makepkg -sf
cd $DIR
mv ./osmium-pkgs/nvidia-all/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/nvidia-all/
cd $PKGDIR
git clone https://aur.archlinux.org/openbox-patched.git
cd openbox-patched
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/openbox-patched/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/openbox-patched
cd $PKGDIR
git clone https://aur.archlinux.org/mkinitcpio-openswap.git
cd mkinitcpio-openswap
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/mkinitcpio-openswap/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/mkinitcpio-openswap
cd $PKGDIR
git clone https://aur.archlinux.org/plymouth.git
cd plymouth
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/plymouth/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/plymouth
cd $PKGDIR
git clone https://aur.archlinux.org/oranchelo-icon-theme.git
cd oranchelo-icon-theme
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/oranchelo-icon-theme/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/oranchelo-icon-theme
cd $PKGDIR
git clone https://aur.archlinux.org/tela-icon-theme.git
cd tela-icon-theme
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/tela-icon-theme/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/tela-icon-theme
cd $PKGDIR
git clone https://aur.archlinux.org/grub-theme-slaze-git.git
cd grub-theme-slaze-git
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/grub-theme-slaze-git/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/grub-theme-slaze-git
cd $PKGDIR
git clone https://aur.archlinux.org/obmenu-generator.git
cd obmenu-generator
makepkg -sfd
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/obmenu-generator/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/obmenu-generator
cd $PKGDIR
git clone https://aur.archlinux.org/ttf-comfortaa.git
cd ttf-comfortaa
makepkg -sfd
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/ttf-comfortaa/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/ttf-comfortaa
cd $PKGDIR
git clone https://aur.archlinux.org/ttf-iosevka.git
cd ttf-iosevka
makepkg -sfd
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/ttf-iosevka/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/ttf-iosevka
cd $PKGDIR
git clone https://aur.archlinux.org/perl-linux-desktopfiles.git
cd perl-linux-desktopfiles
makepkg -sfd
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/perl-linux-desktopfiles/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/perl-linux-desktopfiles
cd $PKGDIR
git clone https://aur.archlinux.org/loksh-git.git
cd loksh-git
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/loksh-git/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/loksh-git
cd $PKGDIR
git clone https://aur.archlinux.org/opensnap.git
cd opensnap
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/opensnap/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/opensnap
cd $PKGDIR
git clone https://aur.archlinux.org/arc-gtk-theme-git.git
cd arc-gtk-theme-git
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/arc-gtk-theme-git/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/arc-gtk-theme-git
cd $PKGDIR
git clone https://aur.archlinux.org/openbox-arc-git.git
cd openbox-arc-git 
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/openbox-arc-git/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/openbox-arc-git 
cd $PKGDIR
git clone https://aur.archlinux.org/python-gettext.git
cd python-gettext
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/python-gettext/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/python-gettext
