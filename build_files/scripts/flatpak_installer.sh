#!/bin/bash
set -ouex pipefail

source /ctc/config

IFS=',' read -r -a apps <<< "$flatpaks"

for app in "${apps[@]}"; do
    app=$(echo "$app" | xargs)  # trim spaces
    echo ">> Installing Flatpak: $app"
    flatpak install -y flathub "$app"
done

echo ">> Flatpak installation finished."
