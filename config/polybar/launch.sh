#!/bin/bash

sleep .5

if ! pgrep -x polybar; then
  polybar example -c ~/.config/polybar/config.ini &
else
  pkill -USR1 polybar
fi

echo "Bars launched..."
