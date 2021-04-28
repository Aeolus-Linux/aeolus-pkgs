#!/usr/bin/env bash

## This script will download and build AUR pkgs and setup the repository database.
#set -x
## Dirs
DIR="$(pwd)"
PKGDIR="$DIR/osmium-pkgs"

##Rustup and Paru
sudo pacman -S --noconfirm rust
cd $PKGDIR
git clone --depth 1 https://aur.archlinux.org/paru-bin.git
cd paru-bin
makepkg -is --noconfirm
cd ..
rm -rf paru-bin
paru -Syyu --noconfirm
printf 'y\n\y\n' | paru -Scc
paru -S pacman-git
cd $PKGDIR
git clone --depth 1 https://aur.archlinux.org/paru-git.git
cd paru-git
pacman -R --noconfirm paru-bin
makepkg -is --noconfirm
cd ..
rm -rf paru-git

LIST=(oomox resvg paru discord_arch_electron vscodium tor-browser humanity-icon-theme yaru colorz gconf libgksu python-colorthief python-haishoku themix-export-spotify-git themix-icons-archdroid-git themix-icons-gnome-colors-git themix-icons-numix-git themix-icons-papirus-git themix-icons-suru-plus-aspromauros-git themix-icons-suru-plus-git themix-import-images-git themix-plugin-base16-git themix-theme-materia-git themix-theme-oomox-git tlpui-git python2-gobject2 asus-fan-control)
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
		sed -i 's/libgksu-2.0.7-polinguas.patch//g' PKGBUILD
		paru -U --noconfirm
		mv *.pkg.tar.zst $DIR/w86_64
    		##For libgksu, delete this line if AUR PKG gets updated
		# Verify
		while true; do
			#set -- $DIR/w86_64/$pkg-*
			set -- $DIR/w86_64/*.pkg.tar.zst
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
