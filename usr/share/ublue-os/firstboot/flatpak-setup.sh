#!/bin/bash

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo flatpak remote-delete --system --force fedora
flatpak remote-delete --user --force fedora
sudo flatpak remove --system --noninteractive --all

sudo flatpak install -y org.mozilla.firefox --system
sudo flatpak install -y com.github.tchx84.Flatseal --system
sudo flatpak install -y com.mattjakeman.ExtensionManager --system
sudo flatpak install -y com.github.marhkb.Pods --system
sudo flatpak install -y com.github.GradienceTeam.Gradience --system
sudo flatpak install -y org.gtk.Gtk3theme.adw-gtk3 org.gtk.Gtk3theme.adw-gtk3-dark --system
sudo flatpak install -y org.gnome.Calculator --system
sudo flatpak install -y org.gnome.Characters --system
sudo flatpak install -y org.gnome.Cheese --system
sudo flatpak install -y org.gnome.Connections --system
sudo flatpak install -y org.gnome.Contacts --system
sudo flatpak install -y org.gnome.SimpleScan --system
sudo flatpak install -y org.gnome.Evince --system
sudo flatpak install -y org.gnome.font-viewer --system
sudo flatpak install -y org.gnome.eog --system
sudo flatpak install -y org.gnome.Weather --system
sudo flatpak install -y org.gnome.TextEditor --system
sudo flatpak install -y org.gnome.NautilusPreviewer --system
sudo flatpak install -y org.gnome.Totem --system
sudo flatpak install -y org.gnome.Calendar --system
sudo flatpak install -y org.gnome.clocks --system
sudo flatpak install -y org.gnome.Logs --system

sudo mkdir -p /etc/firstboot-check-dir
sudo touch /etc/firstboot-check-dir/flatpak-apps
