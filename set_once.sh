#!/bin/sh
dbus-launch dconf load / < ~/xed.dconf
dbus-launch dconf load / < ~/mousepad.dconf
rm ~/xed.dconf ~/mousepad.dconf ~/.config/autostart/set_once.desktop ~/set_once.sh 
