#!/usr/bin/env bash

VERSION=$(curl --silent "https://api.github.com/repos/rafaelmardojai/thunderbird-gnome-theme/releases/latest" | grep tag_name | cut -d'"' -f4)
FILENAME=thunderbird-gnome-theme-$VERSION.tar.gz

(

cd $(mktemp -d) || exit 1
mkdir thunderbird-gnome-theme
cd thunderbird-gnome-theme

curl -LJo $FILENAME https://github.com/rafaelmardojai/thunderbird-gnome-theme/tarball/$VERSION

tar -xzf $FILENAME --strip-components=1

chmod +x scripts/auto-install.sh

./scripts/auto-install.sh

)
