cd $BWDIR
cd aur-pkgs
git clone https://aur.archlinux.org/openbox-patched.git
cd openbox-patched && makepkg -s && cd ..
git clone https://aur.archlinux.org/mkinitcpio-openswap.git
cd mkinitcpio-openswap && makepkg -s && cd ..
git clone https://aur.archlinux.org/plymouth.git
cd plymouth && makepkg -s && cd ..
git clone https://aur.archlinux.org/oranchelo-icon-theme.git
cd oranchelo-icon-theme && makepkg -s && cd ..
git clone https://aur.archlinux.org/tela-icon-theme.git
cd tela-icon-theme && makepkg -s && cd ..
git clone https://aur.archlinux.org/grub-theme-slaze-git.git
cd grub-theme-slaze-git && makepkg -s && cd ..
git clone https://aur.archlinux.org/rofi-calc.git
cd rofi-calc && makepkg -s && cd ..
git clone https://aur.archlinux.org/obmenu-generator.git
cd obmenu-generator && makepkg -s && cd ..
git clone https://aur.archlinux.org/ttf-comfortaa.git
cd ttf-comfortaa && makepkg -s && cd ..
git clone https://aur.archlinux.org/ttf-iosevka.git
cd ttf-iosevka && makepkg -s && cd ..
git clone https://aur.archlinux.org/perl-linux-desktopfiles.git
cd perl-linux-desktopfiles && makepkg -s && cd ..
