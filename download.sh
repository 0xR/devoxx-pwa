wget -r https://dvbe18.confinabox.com
#find dvbe18.confinabox.com -type f | grep -v '\.[^\/]\{1,4\}$' | while read f; do mv "$f"{,.html}; done
