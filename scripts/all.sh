#!/usr/bin/env bash
set -e

#./scripts/download.sh
rm -r dvbe18.confinabox.com
cp -r src/dvbe18.confinabox.com .
find dvbe18.confinabox.com -name '*#*' | xargs rm
find dvbe18.confinabox.com -name '*\?*' | while read f; do mv "$f" "${f/\?*/}"; done
#grep -rl '<html' dvbe18.confinabox.com | grep -v '\.\(html\|js\)$' | while read filename; do mv $filename{,.html}; done
#cp scripts/offline.html dvbe18.confinabox.com
#unzip src/favicon_package_v0.16.zip -d dvbe18.confinabox.com/icons
#npm run build