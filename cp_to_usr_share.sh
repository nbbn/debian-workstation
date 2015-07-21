#!/bin/bash
cp cp_to_usr_share/* /usr/share/ -r
chown root:root /usr/share/fonts -R
chmod u=rwX,g=rX,o=rX /usr/share/fonts -R
chown root:root /usr/share/gnome-shell -R
chmod u=rwX,g=rX,o=rX /usr/share/gnome-shell -R

