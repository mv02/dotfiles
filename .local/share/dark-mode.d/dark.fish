#!/bin/fish
echo "Net/ThemeName 'Skeuos-Gruvbox-Dark'" > $HOME/.config/xsettingsd/xsettingsd.conf
echo "Net/IconThemeName 'Papirus-Dark'" >> $HOME/.config/xsettingsd/xsettingsd.conf
killall -HUP xsettingsd
