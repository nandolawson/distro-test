#!/bin/bash

set -ouex pipefail

source /ctx/config

if [[ "$debloater" == "true" ]]; then
    echo ">> Running debloater script"
    bash /ctx/scripts/debloater.sh
fi

if [[ -n "${flatpaks:-}" ]]; then
    echo ">> Running Flatpak installer"
    bash /ctx/scripts/flatpak_installer.sh
fi
