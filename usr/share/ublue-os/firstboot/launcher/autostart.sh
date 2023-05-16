#!/usr/bin/env bash

echo "Checking if this system has been set up"

if [[ -f /etc/firstboot-check-dir/nix-apps && -f /etc/firstboot-check-dir/flatpak-apps && -d /nix ]]; then

echo "This system has already been set up"
exit 0

fi

echo "Enter password to continue installing nix applications and flatpaks. If nix is not installed, this will install it for you"

sudo echo "Continuing setup..."

sleep 3

[ -d /nix ] && echo “nix is already installed. skipping nix installation” || bash /usr/share/ublue-os/firstboot/nix-install.sh

[ -f /etc/firstboot-check-dir/nix-apps ] && echo “nix has already installed its packages” || bash /usr/share/ublue-os/firstboot/nix-setup.sh

[ -f /etc/firstboot-check-dir/flatpak-apps ] && echo “flatpaks have been already set up” || bash /usr/share/ublue-os/firstboot/flatpak-setup.sh
