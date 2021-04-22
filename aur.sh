#!/usr/bin/env bash

## This script will download and build AUR pkgs and setup the repository database.

## Dirs
DIR="$(pwd)"
PKGDIR="$DIR/osmium-pkgs"

#Nvidia-All
cd $PKGDIR
git clone https://github.com/Frogging-Family/nvidia-all
cd nvidia-all
sed -i 's/install -D -m755 "libnvoptix.so.${pkgver}"/#deleted/g' PKGBUILD
cd ..
rm ./nvidia-all/customization.cfg 
cp ./nvidia-all-noninteractive/customization.cfg ./nvidia-all/
cd nvidia-all
makepkg -sfd
cd $PKGDIR
cd $DIR
mv ./osmium-pkgs/nvidia-all/*.pkg.tar.zst ./w86_64/
rm -rf ./osmium-pkgs/nvidia-all

##Rustup and Paru
sudo pacman -S --noconfirm rustup
sudo rustup toolchain install stable
cd $PKGDIR
rustup default stable
rustup toolchain list
rustup default stable
git clone https://aur.archlinux.org/paru-bin.git
cd paru
makepkg -is
cd ..
rm -rf paru

##Custom linux kernels
cd $PKGDIR
git clone https://github.com/Osmium-Linux/linux-tkg-noninteractive
cp ./linux-tkg-noninteractive/output/*.pkg.tar.zst $DIR/w86_64/
rm -rf linux-tkg-noninteractive 

LIST=(webmin pygtk openbox-patched mkinitcpio-openswap plymouth oranchelo-icon-theme tela-icon-theme grub-theme-slaze-git obmenu-generator ttf-comfortaa ttf-iosevka perl-linux-desktopfiles loksh-git opensnap arc-gtk-theme-git openbox-arc-git python-gettext suru-plus-aspromauros-git suru-plus-dark-git suru-plus-git suru-plus-pack-git suru-plus-telinkrin-git themix-icons-suru-plus-aspromauros-git themix-icons-suru-plus-git themix-full-git themix-gui-git perl-encode-detect perl-authen-pam suru-icon-theme-git oomox resvg paru humanity-icon-theme yaru colorz gconf libgksu python-colorthief python-haishoku themix-export-spotify-git themix-icons-archdroid-git themix-icons-gnome-colors-git themix-icons-numix-git themix-icons-papirus-git themix-icons-suru-plus-aspromauros-git themix-icons-suru-plus-git themix-import-images-git themix-plugin-base16-git themix-theme-materia-git themix-theme-oomox-git tlpui-git python2-gobject2 asus-fan-control)

# Sort packages
PKGS=($(for i in "${LIST[@]}"; do echo $i; done | sort))

## Script Termination
exit_on_signal_SIGINT () {
    { printf "\n\n%s\n" "Script interrupted." 2>&1; echo; }
	if [[ -d $PKGDIR/aur_pkgs ]]; then
		{ rm -rf $PKGDIR/aur_pkgs; exit 0; }
	else
		exit 0
	fi
}

exit_on_signal_SIGTERM () {
    { printf "\n\n%s\n" "Script terminated." 2>&1; echo; }
	if [[ -d $PKGDIR/aur_pkgs ]]; then
		{ rm -rf $PKGDIR/aur_pkgs; exit 0; }
	else
		exit 0
	fi
}

trap exit_on_signal_SIGINT SIGINT
trap exit_on_signal_SIGTERM SIGTERM

## Delete previous packages
delete_pkg () {
	if [[ -d $PKGDIR/aur_pkgs ]]; then
		rm -rf $PKGDIR/aur_pkgs
	fi
	{ echo; cd $DIR/w86_64; }
	set -- $DIR/w86_64/${PKGS[0]}-*
	if [[ -f "$1" ]]; then
		for pkg in "${PKGS[@]}"; do
			{ echo "Deleting previous '${pkg}' .pkg file..."; rm -r ${pkg}-*; }
		done
		{ echo; echo "Done!"; echo; }
	fi
}

# Download AUR packages
download_pkgs () {
	mkdir $PKGDIR/aur_pkgs && cd $PKGDIR/aur_pkgs
	for pkg in "${PKGS[@]}"; do
		git clone --depth 1 https://aur.archlinux.org/${pkg}.git
	# Verify
		while true; do
			set -- $PKGDIR/aur_pkgs/$pkg
			if [[ -d "$1" ]]; then
				{ echo; echo "'${pkg}' downloaded successfully."; }
				break
			else
				{ echo; echo "Failed to download '${pkg}', Exiting..." >&2; }
				{ echo; exit 1; }
			fi
		done
    done
}

# Build AUR packages
build_pkgs () {
	{ echo; echo "Building AUR Packages - "; echo; }
	cd $PKGDIR/aur_pkgs
	for pkg in "${PKGS[@]}"; do
		echo "Building ${pkg}..."
		cd ${pkg} 
		dir
		pwd
		find
    		source ./PKGBUILD
    		paru -S --needed --noconfirm ${depends}
		paru -S --needed --noconfirm ${makedepends}
		paru -S --needed --noconfirm ${optdepends}
    		makepkg -s
		mv *.pkg.tar.zst $DIR/w86_64
   		 sed -i 's/libgksu-2.0.7-polinguas.patch//g' PKGBUILD
    		##For libgksu, delete this line if AUR PKG gets updated
		# Verify
		while true; do
			set -- $DIR/w86_64/$pkg-*
			if [[ -f "$1" ]]; then
				{ echo; echo "Package '${pkg}' generated successfully."; echo; }
				break
			else
				{ echo; echo "Failed to build '${pkg}', Exiting..." >&2; }
				{ echo; exit 1; }
			fi
		done
		cd $PKGDIR/aur_pkgs
	done	
}

# Cleanup
cleanup () {
	echo "Cleaning up..."
	rm -rf $PKGDIR/aur_pkgs
	if [[ ! -d "$PKGDIR/aur_pkgs" ]]; then
		{ echo; echo "Cleanup Completed."; exit 0; }
	else
		{ echo; echo "Cleanup failed."; exit 1; }
	fi	
}

delete_pkg
download_pkgs
build_pkgs
cleanup
