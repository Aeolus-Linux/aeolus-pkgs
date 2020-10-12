pacman -Syu --needed archiso git base-devel jq expac diffstat pacutils wget devtools sudo libxslt cmake intltool mesa gtk-doc gtk-update-icon-cache meson libx11 libxkbcommon gobject-introspection gnome-common polkit gtk3 dbus-glib go pkg-config libxcb xcb-util pam cairo check libglvnd libev ncurses xorg xorg-xauth glibc base-devel gcc libx11 libxkbcommon>=0.5.0 libxkbcommon-x11>=0.5.0 --noconfirm --noprogressbar # Install packages we'll need to build
tee -a /etc/sudoers > /dev/null <<EOT
nobody    ALL=(ALL) NOPASSWD:ALL
EOT
chmod -R 777 .
su -s /bin/sh nobody -c "./main.sh"
