#!/bin/bash
# find path for AndroidStudio preferences directory (can be multiple)
IFS=$'\n' read -rd '' -a I <<< $(find ~/Library/Preferences -type d -name "AndroidStudio*")

for temp in $I; do
        if [ ! -d "$temp/keymaps" ]; then
          mkdir "$temp/keymaps"
          echo "Creating folder keymaps in $temp"
        fi
        X="$temp/keymaps/Keymap_Xcode.xml"
        echo Installing as $X
        cp ./Keymap_Xcode.xml "$X"
done
