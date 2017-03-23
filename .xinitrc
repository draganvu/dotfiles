#!/bin/sh
# Author: Dragan Vujović <dvujovic@protonmail.ch>
# File: ~/.xinitrc
# License: GPLv3
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# set cursor
xsetroot -cursor_name left_ptr

# use capslock as second control key
setxkbmap -option ctrl:nocaps

# merge Xdefaults
xrdb -merge .Xdefaults &

# set wallpaper
feh --bg-scale /home/dragan/wallpaper.jpg

# launch ratpoison wm with startx
exec /usr/bin/ratpoison
