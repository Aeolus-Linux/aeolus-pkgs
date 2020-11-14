## Not recommended to do everything manual like this, however, there is less chance of anything going wrong this way
cd aur-pkgs
pwd
ls
dir
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
## making obmenu-generator while skipping dep checks, not recommended but for some reason makepkg doesn't detect that its dependencies are already installed
cd obmenu-generator && makepkg -sd && cd ..
git clone https://aur.archlinux.org/ttf-comfortaa.git
cd ttf-comfortaa && makepkg -s && cd ..
git clone https://aur.archlinux.org/ttf-iosevka.git
cd ttf-iosevka && makepkg -s && cd ..
git clone https://aur.archlinux.org/perl-linux-desktopfiles.git
cd perl-linux-desktopfiles && makepkg -s && cd ..
cd ..
cp ./aur-pkgs/openbox-patched/*.pkg.tar.zst ./x86_64
cp ./aur-pkgs/mkinitcpio-openswap/*.pkg.tar.zst ./x86_64
cp ./aur-pkgs/plymouth/*.pkg.tar.zst ./x86_64
cp ./aur-pkgs/oranchelo-icon-theme/*.pkg.tar.zst ./x86_64
cp ./aur-pkgs/grub-theme-slaze-git/*.pkg.tar.zst ./x86_64
cp ./aur-pkgs/rofi-calc/*.pkg.tar.zst ./x86_64
cp ./aur-pkgs/obmenu-generator/*.pkg.tar.zst ./x86_64
cp ./aur-pkgs/ttf-comfortaa/*.pkg.tar.zst ./x86_64
cp ./aur-pkgs/ttf-iosevka/*.pkg.tar.zst ./x86_64
cp ./aur-pkgs/perl-linux-desktopfiles/*.pkg.tar.zst ./x86_64
