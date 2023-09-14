xset b off
xset r rate 200
setxkbmap -layout us,cz -option grp:alt_space_toggle,grp:menu_toggle
xmodmap ~/.Xmodmap
xcape -e 'Control_L=Escape'

export TERM=xterm-kitty
export VISUAL=nvim
export EDITOR=nvim
export QT_QPA_PLATFORMTHEME=qt5ct
