#!/usr/bin/env bash

DIR="$(pwd)"
LIST="$(cat aur.list)"
# Sort packages
PKGS=($(for i in "${LIST[@]}"; do echo $i; done | sort))
#echo ${LIST}
#echo Please enter the package you wish to build.

#read -p "Please enter the package you wish to build." PKGS

#echo $PKGS

## Script Termination
exit_on_signal_SIGINT () {
    { printf "\n\n%s\n" "Script interrupted." 2>&1; echo; }
	if [[ -d $DIR/aur_pkgs ]]; then
		{ rm -rf $DIR/aur_pkgs; exit 0; }
	else
		exit 0
	fi
}

exit_on_signal_SIGTERM () {
    { printf "\n\n%s\n" "Script terminated." 2>&1; echo; }
	if [[ -d $DIR/aur_pkgs ]]; then
		{ rm -rf $DIR/aur_pkgs; exit 0; }
	else
		exit 0
	fi
}

trap exit_on_signal_SIGINT SIGINT
trap exit_on_signal_SIGTERM SIGTERM

# Download AUR packages
download_pkgs () {
	cd $DIR/aur_pkgs
	for pkg in "${PKGS[@]}"; do
		git clone --depth 1 https://aur.archlinux.org/${pkg}.git
	# Verify
		while true; do
			set -- $DIR/aur_pkgs/$pkg
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
	cd $DIR/aur_pkgs
	for pkg in "${PKGS[@]}"; do
		echo "Building ${pkg}..."
		cd ${pkg} && makepkg -s
		mv *.pkg.tar.zst $DIR/x86_64
		# Verify
		while true; do
			set -- $DIR/x86_64/$pkg-*
			if [[ -f "$1" ]]; then
				{ echo; echo "Package '${pkg}' generated successfully."; echo; }
				break
			else
				{ echo; echo "Failed to build '${pkg}', Exiting..." >&2; }
				{ echo; exit 1; }
			fi
		done
		cd $DIR/aur_pkgs
	done	
}

download_pkgs
build_pkgs

bash manual-build.sh