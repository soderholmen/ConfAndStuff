#!/bin/bash
file="/home/gurra/.config/tempSpotify.txt"
ar=$(cat $file)
if [ "$(pidof spotify)" ]
then
    ar2=$(xprop -name "Spotify Premium - Linux Preview" _NET_WM_ICON_NAME|\cut -d "\"" -f 2|cut -b 11-)
    if [[ $ar != $ar2 ]]
    then
	ar3=$(xprop -name "Spotify Premium - Linux Preview" _NET_WM_ICON_NAME|\cut -d "\"" -f 2|cut -b 11-)
	truncate -s 0 $file
	echo $ar3 > $file
	twmnc --content "$ar3" -s 25 --pos bottom_center --fs 20 -d 1 --bg '#2f343f' --fg  '#f3f4f5'
    fi
    if [[ "${BLOCK_BUTTON}" -eq 1 ]]; then
	killall spotify
    fi
    echo "X"
else
    echo ""
fi
