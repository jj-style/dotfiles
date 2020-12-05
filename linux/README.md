# Linux

Configuration for different linux tools.

## bashrc
Contains some shortcuts, aliases and useful command-line functions.  
Append the contents or any bits you want to `~/.bashrc`.  
Take it all with `cat .bashrc >> ~/.bashrc`

## fish
Config file for the fish shell.  
Copy to `~/.config/fish/fish.config`

## conkyrc
My current conky config the way I like it (see screenshot below).  
No idea how the config works so let's hope I never have to change it!  
![screenshot of my conky](conky_screenshot.png)  
btw, that's not my public IP, I use Protonvpn :sunglasses:

## vim
Just a few useful settings like line numbers and expanding tabs.
Copy to your home folder `cp .vimrc ~/.vimrc`

## i3
Configuration for i3 window manager and i3 status bar.  
Will need to install a few dependencies:
* i3 related stuff: `i3 i3-lock i3status dmenu`
* program launcher, `i3-dmenu-desktop` or `rofi`
* terminal emulator, e.g. `gnome-terminal`
* browser, e.g. `firefox`
* file explorer, e.g. `nemo` or `ranger`
* screenshot software, e.g. `gnome-screenshot`
* `feh` for setting desktop wallpaper
* `imagemagick` for converting image for lockscreen image
* `nm-applet` if you use network manager for applet in the status bar
* `blueberry-tray` if you use bluetooth and want an applet in the status bar

Note, there are some other keybindings setup for spotify and dropbox, delete these if you don't install them.  

For i3 config: `cp config ~/.config/i3/config`  
For i3status config: `sudo cp i3status.conf /etc/i3status.conf`
