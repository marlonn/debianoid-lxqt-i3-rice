#!/bin/sh
# idempotent script that copies files from this project to their desired destination
mkdir -p ~/.config/ranger ~/.config/i3 ~/.config/micro ~/.config/lxterminal ~/.config/gtk-3.0
cp .config/ranger/rc.conf ~/.config/ranger/rc.conf
cp .config/i3/config ~/.config/i3/config 
cp .config/micro/settings.json ~/.config/micro/settings.json
cp .config/gtk-3.0/gtk.css ~/.config/gtk-3.0/gtk.css
cp .config/lxterminal/lxterminal.conf ~/.config/lxterminal/lxterminal.conf
cp .selected_editor ~/
