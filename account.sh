pacman -Syu --needed --noconfirm --noprogressbar 
pacman -S --needed git base-devel
useradd -p builderbob -c builderbob -m builderbob
echo "builderbob:builderbob"|chpasswd
#echo "nobody" | passwd --stdin nobody
pacman -Sy --needed autogen cmake python-sphinx i3-wm libpulse lipmpdclient perl-data-dump perl sudo fakeroot gtk2-perl perl-file-desktopentry perl-gtk3 efibootmgr base-devel python rsync fuse2 xorg-xauth libxinerama gtk3 libxrandr libxcursor imlib2 libqalculate hicolor-icon-theme gtk-update-icon-cache git sudo fakeroot go binutils rofi  docbook-xsl libdrm patch autoconf automake gcc bdf-unifont help2man ttf-dejavu --needed --noconfirm --noprogressbar 
tee -a /etc/sudoers > /dev/null <<EOT
builderbob    ALL=(ALL) NOPASSWD:ALL
EOT
chmod -R 777 .
sudo mkdir -p /go/pkg/mod/cache/download/github.com
sudo chmod -R 777 /go
sudo chmod -R 777 /go/pkg/mod/cache/download/github.com
sudo mkdir -p /.cache/go-build
sudo chmod -R 777 /.cache
sudo chmod -R 777 /.cache/go-build
su -c "./yay.sh" builderbob
su -c "./main.sh" builderbob
