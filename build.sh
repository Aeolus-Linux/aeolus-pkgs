sudo pacman -Syu --noconfirm
sudo pacman -Sy --needed --noconfirm autogen cmake python-sphinx grub git meson perl fish tmux libglade python2-cairo python2-gobject2 python2-numpy  vim zsh git go i3-wm python2 python pacman-contrib expac fzf libpulse libmpdclient perl-data-dump perl sudo fakeroot gtk2-perl perl-file-desktopentry perl-gtk3 efibootmgr base-devel python rsync fuse2 xorg-xauth libxinerama gtk3 libxrandr libxcursor imlib2 libqalculate hicolor-icon-theme gtk-update-icon-cache git sudo fakeroot go binutils rofi  docbook-xsl libdrm patch autoconf automake gcc bdf-unifont help2man ttf-dejavu
sudo chmod -R 777 .
sudo mkdir -p /go/pkg/mod/cache/download/github.com
sudo chmod -R 777 /go
sudo chmod -R 777 /go/pkg/mod/cache/download/github.com
sudo mkdir -p /.cache/go-build
sudo chmod -R 777 /.cache
sudo chmod -R 777 /.cache/go-build
sudo chmod +x ./scripts/pkg_aur.sh
sudo chmod +x ./scripts/pkg_lme.sh
sudo chmod +x ./x86_64/update.sh
git clone https://aur.archlinux.org/yay.git
mkdir aeolus-pkgs
cd aeolus-pkgs
git clone https://github.com/Frogging-Family/linux-tkg.git
cd linux-tkg
rm customization.cfg
cd ..
cd ..
cp ./customization.cfg ./aeolus-pkgs/linux-tkg
pwd
cd yay
makepkg -si --noconfirm
yay -Sy --noconfirm plymouth openbox-patched perl-linux-desktopfiles mkinitcpio-openswap ckbcomp
cd ..
git clone https://aur.archlinux.org/pygtk.git
cd pygtk
makepkg -si --noconfirm
cd ..
sh ./scripts/pkg_aur.sh
sh ./scripts/pkg_lme.sh
sh ./x86_64/update.sh
rm -rf /__w/aeolus-pkgs/aeolus-pkgs/aur_pkgs/
