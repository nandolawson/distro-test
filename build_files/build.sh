#!/bin/bash

set -ouex pipefail

source /ctx/config

if [[ "$debloater" == "true" ]]; then
    echo ">> Running debloater script"
    bash /ctx/scripts/debloater.sh
fi
