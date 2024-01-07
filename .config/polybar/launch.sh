#!/bin/bash

sleep .5

if ! pgrep -x polybar; then
	polybar base &
else
	pkill -USR1 polybar
fi

echo "Bars launched..."
