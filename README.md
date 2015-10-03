gnome automated configuration - universal Debian workstation
=============================
Main goal of this repo is to provide usable Gnome3 environment for users, that used to be Windows users. Settings are focused on privacy.
Desktop metaphor is provided using modified window-list extension and others extensions. Default fonts and a lot of settings are changed.

Second goal is to provide standard configuration of tools, that I install on every workstation. List of all tools is below.
All encodings, etc. are focused on using Polish and support ą, ę, ł, etc., but localization is en_US.

Everything is tested on Debian 8.

### global config
For font installation and gnome theme and extension modifications:
```sh
su
chmod +x cp_to_usr_share.sh
./cp_to_usr_share.sh
```
### user config
For installing standard config files and modify gnome dconf settings, run:
``'sh
chmod +x gnome_config.sh
./gnome_config.sh
```

These configuration files are for (it depends on branch):
  - i3 (dmenu, i3lock, conky…),
  - git
  - byobu
  - fontconfig
  - sublime-text
  - qnapi
  - gtk3.0
  - qnapi
  - redshift
  - bleachbit, review befor running `bleachbit --preset -c`
  - firefox
  - terminator
  - modified default gnome3 appearance
  - modified window-list extension for gnome3, not ugly anymore


Gimp config from [Gimp 2.8 Photoshop Tweaks by doctormo](http://doctormo.deviantart.com/art/Gimp-2-8-Photoshop-Tweaks-432736644).
Gnome extension TopIcons from https://github.com/anarsoul/topIcons

Fonts:
  - [Lato font](http://www.latofonts.com/lato-free-fonts/),
  - [Open Sans and Open Sans Condensed by Steve Matteson](https://en.wikipedia.org/wiki/Open_Sans)
  - [Source Sans and Source Code](https://github.com/adobe-fonts/source-sans-pro)
  - [Hack](TODO)

I share it with you for inspiration, please adjust it to your preferences.

## branches
  - master - minimal set for every user, Debian 8/9 and newest stable Iceweasel.
  
## gnome config known issues and suggestions
  - bluetooth settings depend on hardware
  - change language, input language and format
  - enable time sync, timezone (after changing ntp servers in /etc/systemd/timesyncd.conf)
  - diable system notification sound
  - remove interfaces other than lo from /etc/network/interfaces to manage it using NetworkManager
  - delete default dirs in home dir
  - delete bookmarks in nautilus
  - for some users, desktop icons are needed
