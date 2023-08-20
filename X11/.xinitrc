xrdb -merge $HOME/.config/X11/.Xresources
urxvtd -o -q -f
udiskie &

# For scaling
xrandr --dpi 144

setxkbmap -option 'caps:ctrl_modifier';xcape -e 'Caps_Lock=Escape'&
#setxkbmap -option caps:escape

exec i3
