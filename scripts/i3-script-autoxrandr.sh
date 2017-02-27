#!/bin/bash

intern=eDP1
extern=HDMI2

if xrandr | grep "$extern disconnected"; then
    xrandr --output "$extern" --off --output "$intern" --auto
else
    xrandr --output "$intern" --rotate normal
    xrandr --output "$extern" --rotate left
    xrandr --output "$intern" --auto --left-of "$extern" --auto
fi

