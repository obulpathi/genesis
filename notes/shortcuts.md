Shortcuts

* The modifier keys are mapped in /usr/share/X11/xkb/symbols/pc, a file which is inherited by all other configurations. Since I just want to replace Super with Control, the changes are minimal:

key <LCTL> {    [ Super_L       ]   };
key <LWIN> {    [ Control_L     ]   };
key <RCTL> {    [ Super_R       ]   };
key <RWIN> {    [ Control_R     ]   };

In order to apply the new mappings you need to clear out xkb’s cache from /var/lib/xkb: rm -rf /var/lib/xkb/*
Afterwards just restart your X session and you’re good to go. Even though this small change doesn’t make all shortcuts to work like on a Mac it’s still a lot better than without it.


install sudo apt-get install compizconfig-settings-manager
ccsm in launch terminal and go to Unity settings
change Unity settings and reboot?
