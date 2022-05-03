#!/usr/bin/env bash
set -euo pipefail

RELEASE=$1
mkdir -p /tmp/iosevka-font/$RELEASE
cd /tmp/iosevka-font/$RELEASE

wget https://github.com/be5invis/Iosevka/releases/download/v$RELEASE/ttf-iosevka-$RELEASE.zip

unzip \*.zip

sudo mkdir /usr/local/share/fonts/iosevka-font
sudo mv *.ttf /usr/local/share/fonts/iosevka-font/.

sudo fc-cache -fv