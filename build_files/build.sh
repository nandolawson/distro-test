#!/bin/bash

set -ouex pipefail

source $CONFIG_FILE

if [[ "$debloater" == "true" ]]; then
    echo ">> Running debloater script"
    bash /ctx/scripts/debloater.sh
fi

if [[ -n "${flatpaks:-}" ]]; then
    echo ">> Running Flatpak installer"
    bash /ctx/scripts/install-flatpak.sh
fi
