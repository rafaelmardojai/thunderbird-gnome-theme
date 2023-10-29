#! /usr/bin/env bash

sysThemeNames=("'Adwaita-maia'" "'Adwaita-maia-dark'")
themeNames=("maia" "maia")

installationPaths=(
    ~/.thunderbird
    ~/.var/app/org.mozilla.Thunderbird/.thunderbird
    ~/snap/thunderbird/common/.thunderbird
    ~/.var/app/eu.betterbird.Betterbird/.thunderbird
)

currentTheme=$(gsettings get org.gnome.desktop.interface gtk-theme ) || currentTheme=""
installScript="./scripts/install.sh"
themeArg=""
folderArg=""
foldersFoundCount=0

eval "chmod +x ${installScript}"

for i in "${!sysThemeNames[@]}"; do
   if [[ "${sysThemeNames[$i]}" = "${currentTheme}" ]]; then
        themeArg=" -t ${themeNames[i]}"
   fi
done

for folder in "${installationPaths[@]}"; do
    if [ -d $folder ]; then
    echo Thunderbird installation folder found

    folderArg=" -f $folder"
    eval ${installScript}${themeArg}${folderArg}   
    foldersFoundCount+=1

    fi

done

if [ $foldersFoundCount = 0 ];then
    echo No Thunderbird folder found ;
    fi
