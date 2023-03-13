#!/bin/fish
echo 'Net/ThemeName "Skeuos-Gruvbox-Light"' > $HOME/.config/xsettingsd/xsettingsd.conf
echo 'Net/IconThemeName "Papirus"' >> $HOME/.config/xsettingsd/xsettingsd.conf
killall -HUP xsettingsd
