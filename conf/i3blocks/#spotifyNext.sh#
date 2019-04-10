#!/bin/bash


if [ "$(pidof spotify)" ]
then
    echo ""
    if [[ "${BLOCK_BUTTON}" -eq 1 ]]; then
	dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Next
    fi
else
    echo ""
fi

