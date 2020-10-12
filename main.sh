sudo pacman -Syu --needed archiso sudo fakeroot git base-devel jq giflib libid3tag libqalculate rofi libwebp  imlib2 --noconfirm --noprogressbar 
sudo pacman -Syu --needed startup-notification expac diffstat pacutils wget devtools sudo libxslt cmake intltool mesa gtk-doc gtk-update-icon-cache meson libx11 libxkbcommon gobject-introspection gnome-common polkit gtk3 dbus-glib go pkg-config libxcb xcb-util pam cairo check libglvnd libev ncurses xorg xorg-xauth glibc base-devel gcc libx11 libxkbcommon>=0.5.0 libxkbcommon-x11>=0.5.0 --noconfirm --noprogressbar 
sudo pacman -Syu --needed archiso sudo fakeroot git base-devel jq giflib libid3tag libqalculate rofi libwebp  imlib2  startup-notification expac diffstat pacutils wget devtools sudo libxslt cmake intltool mesa gtk-doc gtk-update-icon-cache meson libx11 libxkbcommon gobject-introspection gnome-common polkit gtk3 dbus-glib go pkg-config libxcb xcb-util pam cairo check libglvnd libev ncurses xorg pam xorg-xauth git imlib2 librsvg libsm libxcursor libxinerama libxlm2 libxrandr autogen bdf-unifont help2man ttf-dejavu efibootmgr pango startup-notification gtk-update-icon-cache hicolor-icon-theme gtk3 mpd  go xorg-xauth glibc base-devel gcc libx11 libxkbcommon>=0.5.0 libxkbcommon-x11>=0.5.0
sudo mkdir -p /go/pkg/mod/cache/download/github.com
sudo chmod -R 777 /go
sudo chmod -R 777 /go/pkg/mod/cache/download/github.com
sudo mkdir -p /.cache/go-build
sudo chmod -R 777 /.cache
sudo chmod -R 777 /.cache/go-build
./setup.sh
        ./pkg_aur.sh
       sh ./x86_64/update.sh
