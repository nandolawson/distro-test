#!/bin/bash
set -ouex pipefail

source /ctx/config

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

IFS=',' read -r -a apps <<< "$flatpaks"

for app in "${apps[@]}"; do
    app=$(echo "$app" | xargs)  # trim spaces
    echo ">> Installing Flatpak: $app"
    flatpak install -y flathub "$app"
done

echo ">> Flatpak installation finished."
