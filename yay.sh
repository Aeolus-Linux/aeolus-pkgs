git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
su -s /bin/sh nobody -c "sudo yay -Sy openbox-patched perl-linux-desktopfiles" 