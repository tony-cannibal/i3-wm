#! /bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}


setxkbmap -option caps:swapescape

xset s off -dpms

xset r rate 350 60

feh --bg-fill ~/Pictures/Wallpapers/beach.jpg &

picom &

run "lxpolkit"

run "mpd"

wmname LG3D
