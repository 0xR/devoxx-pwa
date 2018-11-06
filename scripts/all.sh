#!/usr/bin/env bash
set -e

rm -r dvbe18.confinabox.com
./scripts/download.sh
cp scripts/offline.html dvbe18.confinabox.com
unzip src/favicon_package_v0.16.zip -d dvbe18.confinabox.com/icons
npm run build