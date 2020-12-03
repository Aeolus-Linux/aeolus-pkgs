#!/usr/bin/env bash

## This script will generate osmium pkg-files.

## Dirs
DIR="$(pwd)"
PKGDIR="$DIR/osmium-pkgs"

## Packages
PKGS=($(ls $PKGDIR))

##Pacman Packages
#Themix 
sudo pacman -Sy findutils sed git python 
#Webmin
sudo pacman -Sy openssl perl perl-net-ssleay perl-socket6
#Perl Modules
sudo pacman -Sy perl-module-build
#Yay
sudo pacman -Sy sudo go
#Oomox 
sudo pacman -Sy bc findutils gdk-pixbuf2 glib2 gnome-themes-extra grep gtk-engine-murrine gtk-engines gtk3 imagemagick librsvg optipng parallel polkit python-gobject python-pillow python-pystache python-yaml sassc sed zip ##AUR, Fix later breeze-icons colorz gksu python-colorthief python-haishoku xorg-xrdb
##AUR Packages
#Installing Yay
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -sfi
cd ..
rm -rf yay-bin
#Webmin
yay -Sy perl-authen-pam perl-encode-detect 
#Oomox
yay -Sy resvg

###Build

#Webmin
cd $PKGDIR
git clone https://aur.archlinux.org/webmin.git
cd webmin
makepkg -sfd
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/webmin/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/webmin

#Nvidia-All
cd $PKGDIR
git clone https://github.com/Osmium-Linux/nvidia-all-noninteractive.git
git clone https://github.com/Frogging-Family/nvidia-all
cd nvidia-all
sed -i 's/install -D -m755 "libnvoptix.so.${pkgver}"/#deleted/g' PKGBUILD
cd ..
rm ./nvidia-all/customization.cfg 
cp ./nvidia-all-noninteractive/fileskept/customization.cfg ./nvidia-all/
cd nvidia-all
makepkg -sfd
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/nvidia-all/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/nvidia-all-noninteractive
rm -rf ./osmium-pkgs/nvidia-all

#Pygtk
cd $PKGDIR
git clone https://aur.archlinux.org/pygtk.git
cd pygtk
makepkg -si --noconfirm
cd $DIR
rm -rf pygtk
mv ./osmium-pkgs/pygtk/*.pkg.tar.zst ./x86_64/

#Osmium Plymouth Theme
cd $PKGDIR
git clone https://github.com/Osmium-Linux/osmium-plymouth-theme.git
cd osmium-plymouth-theme
makepkg -sf
cd $DIR
mv ./osmium-pkgs/osmium-plymouth-theme/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/osmium-plymouth-theme/

#Openbox Patched
cd $PKGDIR
git clone https://aur.archlinux.org/openbox-patched.git
cd openbox-patched
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/openbox-patched/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/openbox-patched

#Mkinitcpio Openswap
cd $PKGDIR
git clone https://aur.archlinux.org/mkinitcpio-openswap.git
cd mkinitcpio-openswap
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/mkinitcpio-openswap/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/mkinitcpio-openswap

#Plymouth
cd $PKGDIR
git clone https://aur.archlinux.org/plymouth.git
cd plymouth
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/plymouth/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/plymouth

#Oranchelo Icon Theme
cd $PKGDIR
git clone https://aur.archlinux.org/oranchelo-icon-theme.git
cd oranchelo-icon-theme
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/oranchelo-icon-theme/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/oranchelo-icon-theme

#Tela Icon Theme
cd $PKGDIR
git clone https://aur.archlinux.org/tela-icon-theme.git
cd tela-icon-theme
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/tela-icon-theme/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/tela-icon-theme

#Grub theme slaze
cd $PKGDIR
git clone https://aur.archlinux.org/grub-theme-slaze-git.git
cd grub-theme-slaze-git
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/grub-theme-slaze-git/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/grub-theme-slaze-git

#Obmenu Generator
cd $PKGDIR
git clone https://aur.archlinux.org/obmenu-generator.git
cd obmenu-generator
makepkg -sfd
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/obmenu-generator/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/obmenu-generator

#TTF Comfortaa
cd $PKGDIR
git clone https://aur.archlinux.org/ttf-comfortaa.git
cd ttf-comfortaa
makepkg -sfd
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/ttf-comfortaa/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/ttf-comfortaa

#TTF Iosevka
cd $PKGDIR
git clone https://aur.archlinux.org/ttf-iosevka.git
cd ttf-iosevka
makepkg -sfd
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/ttf-iosevka/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/ttf-iosevka

#PERL Linux Desktopfiles
cd $PKGDIR
git clone https://aur.archlinux.org/perl-linux-desktopfiles.git
cd perl-linux-desktopfiles
makepkg -sfd
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/perl-linux-desktopfiles/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/perl-linux-desktopfiles

#LOKSH Git
cd $PKGDIR
git clone https://aur.archlinux.org/loksh-git.git
cd loksh-git
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/loksh-git/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/loksh-git

#Opensnap
cd $PKGDIR
git clone https://aur.archlinux.org/opensnap.git
cd opensnap
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/opensnap/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/opensnap

#Arc GTK Theme Git
cd $PKGDIR
git clone https://aur.archlinux.org/arc-gtk-theme-git.git
cd arc-gtk-theme-git
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/arc-gtk-theme-git/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/arc-gtk-theme-git

#Openbox Arc Theme
cd $PKGDIR
git clone https://aur.archlinux.org/openbox-arc-git.git
cd openbox-arc-git 
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/openbox-arc-git/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/openbox-arc-git 

#Python Gettext
cd $PKGDIR
git clone https://aur.archlinux.org/python-gettext.git
cd python-gettext
makepkg -sf 
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/python-gettext/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/python-gettext

#Suru Plus Aspromauros git
cd $PKGDIR
git clone https://aur.archlinux.org/suru-plus-aspromauros-git.git
cd suru-plus-aspromauros-git
makepkg -sfd
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/suru-plus-aspromauros-git/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/suru-plus-aspromauros-git

#Suru Plus Dark Git
cd $PKGDIR
git clone https://aur.archlinux.org/suru-plus-dark-git.git
cd suru-plus-dark-git
makepkg -sfd
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/suru-plus-dark-git/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/suru-plus-dark-git

#Suru Plus Git
cd $PKGDIR
git clone https://aur.archlinux.org/suru-plus-git.git
cd suru-plus-git
makepkg -sfd
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/suru-plus-git/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/suru-plus-git

#Suru Plus Pack Git
cd $PKGDIR
git clone https://aur.archlinux.org/suru-plus-pack-git.git
cd suru-plus-pack-git
makepkg -sfd
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/suru-plus-pack-git/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/suru-plus-pack-git

#Suru Plus Telinkrin git
cd $PKGDIR
git clone https://aur.archlinux.org/suru-plus-telinkrin-git.git
cd suru-plus-telinkrin-git
makepkg -sfd
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/suru-plus-telinkrin-git/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/suru-plus-telinkrin-git

#Themix Icons Suru Plus Aspromauros Git
cd $PKGDIR
git clone https://aur.archlinux.org/themix-icons-suru-plus-aspromauros-git.git
cd themix-icons-suru-plus-aspromauros-git
makepkg -sfd
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/themix-icons-suru-plus-aspromauros-git/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/themix-icons-suru-plus-aspromauros-git

#Themix Icons Suru Plus Git
cd $PKGDIR
git clone https://aur.archlinux.org/themix-icons-suru-plus-git.git
cd themix-icons-suru-plus-git
makepkg -sfd
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/themix-icons-suru-plus-git/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/themix-icons-suru-plus-git

#Themix Full Git
cd $PKGDIR
git clone https://aur.archlinux.org/themix-full-git.git
cd themix-full-git
makepkg -sf
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/themix-full-git/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/themix-full-git

#Themix Gui Git
cd $PKGDIR
git clone https://aur.archlinux.org/themix-gui-git.git
cd themix-gui-git
makepkg -sf
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/themix-gui-git/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/themix-gui-git

#Perl Encode Detect
cd $PKGDIR
git clone https://aur.archlinux.org/perl-encode-detect.git
cd perl-encode-detect
makepkg -sf
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/perl-encode-detect/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/perl-encode-detect

#Perl Authen Pam
cd $PKGDIR
git clone https://aur.archlinux.org/perl-authen-pam.git
cd perl-authen-pam
makepkg -sf
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/perl-authen-pam/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/perl-authen-pam

#Suru Icon Theme
cd $PKGDIR
git clone https://aur.archlinux.org/suru-icon-theme-git.git
cd suru-icon-theme-git
makepkg -sf
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/suru-icon-theme-git/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/suru-icon-theme-git

#Oomox
cd $PKGDIR
git clone https://aur.archlinux.org/oomox.git
cd oomox
makepkg -sf
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/oomox/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/oomox

#Resvg
cd $PKGDIR
git clone https://aur.archlinux.org/resvg.git
cd resvg
makepkg -sf
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/resvg/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/resvg

#Yay
cd $PKGDIR
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -sf
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/yay/*.pkg.tar.zst ./x86_64/
rm -rf ./osmium-pkgs/yay

