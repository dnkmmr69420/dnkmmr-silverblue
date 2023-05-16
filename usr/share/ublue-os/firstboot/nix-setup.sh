#!/bin/bash
sudo nix profile install nixpkgs#distrobox
sudo nix profile install nixpkgs#toolbox
sudo nix profile install nixpkgs#htop
sudo nix profile install nixpkgs#mc

sudo mkdir -p /etc/firstboot-check-dir
sudo touch /etc/firstboot-check-dir/nix-apps
