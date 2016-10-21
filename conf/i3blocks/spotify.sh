#!/bin/bash


if [ "$(pidof spotify)" ]
then
    echo " "
    if [[ "${BLOCK_BUTTON}" -eq 1 ]]; then
	dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause
    fi
else
    if [[ "${BLOCK_BUTTON}" -eq 1 ]]; then
	spotify --ui.track_notifications_enabled=false&
	sleep 2
	dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause
    fi
    echo ""
    echo ""
    echo \#00ff00
fi



