#!/bin/bash
while [ "$select" != "NO" -a "$select" != "YES" ]; do
    select=$(echo -e 'YES\nNO' | dmenu -nb '#333333' -nf '#888888' -sb '#555555' -sf '#ffffff' -fn '-*-*-medium-r-normal-*-*-*-*-*-*-100-*-*' -i -p "exit?")
    [ -z "$select" ] && exit 0
done
[ "$select" = "NO" ] && exit 0
i3-msg exit