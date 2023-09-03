xrdb -merge $HOME/.config/X11/.Xresources
urxvtd -o -q -f
udiskie &

# For scaling
xrandr --dpi 144

# Compositor, zoom
xcompmgr -c -l0 -t0 -r0 -o.00 &

# Screenshots
flameshot &


setxkbmap -option 'caps:ctrl_modifier';xcape -e 'Caps_Lock=Escape'&
#setxkbmap -option caps:escape

exec i3
