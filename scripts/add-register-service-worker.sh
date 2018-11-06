#!/usr/bin/env bash
folder=dvbe18.confinabox.com
grep -rl '</head>' $folder | while read file
do
grep -q serviceWorker "$file" || \
sed -i.bak 's#</head>#<script>\
        if ("serviceWorker" in navigator) {\
            window.addEventListener("load", function () {\
                navigator.serviceWorker.register("/sw.js");\
            });\
        }\
    </script>\
    </head>#' "$file"
done

find $folder -name \*.bak -exec rm "{}" \;
