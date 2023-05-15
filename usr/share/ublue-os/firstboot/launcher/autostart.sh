#!/usr/bin/env bash

[ -d /nix/store ] && echo “nix is already installed. skipping nix installation” || bash /usr/share/ublue-os/firstboot/nix-install.sh

[ -f /etc/firstboot-check-dir/nix-apps ] && echo “nix has already installed its packages” || bash /usr/share/ublue-os/firstboot/nix-setup.sh

[ -f /etc/firstboot-check-dir/flatpak-apps ] && echo “flatpaks have been already set up” || bash /usr/share/ublue-os/firstboot/nix-setup.sh
