#!/bin/bash

set -ouex pipefail

dnf5 remove -y \
    firefox \
    firefox-langpacks

dnf5 autoremove -y || true
