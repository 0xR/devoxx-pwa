cd src
wget -r https://dvbe18.confinabox.com
grep -rl '<html' dvbe18.confinabox.com | grep -v '\.html$' | while read filename; do mv $filename{,.html}; done
