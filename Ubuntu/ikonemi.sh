#!/bin/bash

xmodmap -e "keycode 64 = Super_L"
# can't run super_L to Alt_L 
#xmodmap -e "keycode 147 = Alt_L" 
xmodmap -e "keycode 135 = Alt_L"
# xmodmap -e "keycode 66 = Escape"
xmodmap -e "keycode 133 = Menu"

# xmodmap -pke > .Xmodmap
# xmodmap -pke > ~/keymaptable

# # detect keyboard when you press
# xev -event keyboard

# # create a key.sh file to save the script

# # take the keycode && keyname
# xmodmap -e "keycode 64 = Super_L" # change Alt_L to Super_L
# xmodmap -e "keycode 135 = Alt_L" # change Menu to Alt_L
# xmodmap -e "keycode 133 = Super_R" 
# # change capslock to Esc
# xmodmap -e "keycode 66 = Escape" 

