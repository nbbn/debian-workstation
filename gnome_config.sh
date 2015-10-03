#!/bin/bash
#  copy standard profile
cp standard_profile/. /home/$USER -R

#  gnome settings
dconf write /org/gnome/desktop/privacy/remember-app-usage false
dconf write /org/gnome/shell/favorite-apps "['iceweasel.desktop', 'icedove.desktop', 'libreoffice-writer.desktop', 'libreoffice-calc.desktop', 'org.gnome.Nautilus.desktop']"
dconf write /org/gnome/terminal/legacy/encodings "['ISO-8859-2', 'WINDOWS-1250', 'UTF-8']"
dconf write /org/gnome/terminal/legacy/default-show-menubar "false"
dconf write /org/gnome/terminal/legacy/profiles:/list "['b1dcc9dd-5262-4d8d-a863-c897e6d979b9']"
dconf write /org/gnome/terminal/legacy/profiles:/default "'b1dcc9dd-5262-4d8d-a863-c897e6d979b9'"
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/use-custom-command true
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/custom-command "'/usr/bin/fish'"
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/exit-action "'hold'"
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/foreground-color "'rgb(131,148,150)'"
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/background-color "'rgb(0,43,54)'"
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/use-theme-colors false
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/palette "['rgb(7,54,66)', 'rgb(220,50,47)', 'rgb(133,153,0)', 'rgb(181,137,0)', 'rgb(38,139,210)', 'rgb(211,54,130)', 'rgb(42,161,152)', 'rgb(238,232,213)', 'rgb(0,43,54)', 'rgb(203,75,22)', 'rgb(88,110,117)', 'rgb(101,123,131)', 'rgb(131,148,150)', 'rgb(108,113,196)', 'rgb(147,161,161)', 'rgb(253,246,227)']"
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/visible-name "'main'"
dconf write /org/gnome/terminal/legacy/keybindings/help "'<Primary><Alt>1'"

gsettings set org.gnome.settings-daemon.plugins.updates active false
gsettings set org.gnome.settings-daemon.plugins.updates auto-download-updates false
gsettings set org.gnome.desktop.screensaver lock-delay 15
gsettings set org.gnome.SessionManager logout-prompt false
gsettings set org.gnome.nautilus.desktop network-icon-visible true
dconf write /org/gtk/settings/file-chooser/startup-mode "'cwd'"
dconf write /org/gnome/settings-daemon/plugins/cursor/active false
#gnome-tweak-tool
dconf write /org/gnome/desktop/wm/preferences/titlebar-font "'Open Sans Bold 10'"
dconf write /org/gnome/desktop/interface/font-name "'Open Sans 10'"
dconf write /org/gnome/desktop/interface/document-font-name "'Open Sans 10'"
dconf write /org/gnome/desktop/interface/monospace-font-name "'Hack 10'"
dconf write /org/gnome/settings-daemon/plugins/xsettings/antialiasing "'rgba'"
dconf write /org/gnome/desktop/wm/preferences/num-workspaces 1
dconf write /org/gnome/shell/overrides/dynamic-workspaces false
dconf write /org/gnome/desktop/interface/clock-show-date true
dconf write /org/gnome/shell/calendar/show-weekdate true
dconf write /org/gnome/desktop/wm/preferences/button-layout "':minimize,maximize,close'"
dconf write /org/gnome/shell/enabled-extensions "['alternative-status-menu@gnome-shell-extensions.gcampax.github.com', 'apps-menu@gnome-shell-extensions.gcampax.github.com', 'launch-new-instance@gnome-shell-extensions.gcampax.github.com', 'places-menu@gnome-shell-extensions.gcampax.github.com', 'drive-menu@gnome-shell-extensions.gcampax.github.com', 'window-list@gnome-shell-extensions.gcampax.github.com', 'topIcons@adel.gadllah@gmail.com']"
# settings
dconf write /org/gnome/desktop/notifications/show-in-lock-screen false
dconf write /org/gnome/desktop/screensaver/lock-delay 300
dconf write /org/gnome/desktop/privacy/remember-recent-files false
dconf write /org/gnome/desktop/privacy/remove-old-trash-files true
dconf write /org/gnome/desktop/privacy/remove-old-temp-files true
dconf write /org/gnome/desktop/privacy/old-files-age 7
dconf write /org/gnome/desktop/search-providers/disable-external true
# time settings
dconf write /org/gnome/desktop/datetime/automatic-timezone true
dconf write /org/gnome/desktop/interface/clock-format "'24h'"
dconf write /org/gtk/settings/file-chooser/clock-format "'24h'"
# rest
dconf write /org/gnome/desktop/sound/theme-name "'freedesktop'"
dconf write /org/gnome/desktop/session/idle-delay 480
dconf write /org/gnome/settings-daemon/plugins/power/idle-dim true
dconf write /org/gnome/desktop/media-handling/autorun-never true
# shortcuts
dconf write /org/gnome/shell/keybindings/toggle-application-view "['<Super>r']"
dconf write /org/gnome/desktop/wm/keybindings/show-desktop "['<Super>d']"
dconf write /org/gnome/settings-daemon/plugins/media-keys/screensaver "'<Super>l'"
# language and locale
dconf write /system/locale/region "'en_US.UTF-8'"
dconf write /org/gnome/desktop/input-sources/sources "[('xkb', 'pl')]"
# touchpad
dconf write /org/gnome/desktop/peripherals/touchpad/scroll-method "'two-finger-scrolling'"
dconf write /org/gnome/desktop/peripherals/touchpad/tap-to-click false
dconf write /org/gnome/desktop/wm/preferences/focus-mode "'click'"
dconf write /org/gnome/nautilus/preferences/default-folder-viewer "'list_view'"
#  end of gnome
