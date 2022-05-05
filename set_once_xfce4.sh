#!/bin/sh
dbus-launch dconf load / < ~/xed.dconf
cp /etc/xdg/autostart/firewall-applet.desktop ~/.config/autostart/
echo Hidden=true >> ~/.config/autostart/firewall-applet.desktop
rm ~/xed.dconf ~/.config/autostart/set_once_xfce4.desktop ~/set_once_xfce4.sh 
