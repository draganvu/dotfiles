#!/bin/bash
#------------------------------------------------------
# Lemonbar config file (for Ubuntu & Ratpoison)
# Author: Dragan Vujović <dvujovic@protonmail.ch>
# License: GPLv3
#------------------------------------------------------

# Settings
Barfont="LiberationMono-10:style=regular"
Iconfont="FontAwesome:size=11"
Geometry="widthx18"

# Colors
Backgcolor="#32302f"
Foregcolor="#ebdbb2"
Green="#b8bb26"
Red="#cc241d"
Blue="#458588"
White="#fbf1c7"

Iconvol=$(echo -e "\uf028")
Iconbat=$(echo -e "\uf0e7")
Iconclock=$(echo -e "\uf017")

user() {
    echo "%{B$Blue}%{F$Backgcolor} $USER"@"$HOSTNAME %{B-}%{F-}"
}

groups () {
    echo "`ratpoison -c windows`"
}

volume () {
    vol=$(awk -F"[][]" '/Front Left:/ { sub(/%/,""); print $2 }' <(amixer sget Master))
    echo "%{B$Blue}%{F$White} $Iconvol ${vol}% %{B-}%{F-}"
}

battery() {
    bat=$(cat /sys/class/power_supply/BAT0/capacity)
    echo "%{B$Red}%{F$White} $Iconbat ${bat}% %{B-}%{F-}"
}

clock() {
    time=$(date +%H:%M)
    echo "%{B$Green}%{F$White} $Iconclock ${time} %{B-}%{F-}"
}

statusbar() {
    echo "$(user) $(groups) %{r}$(volume)$(battery)$(clock)"
}
        
while true; do
    echo $(statusbar)
    sleep 1
done | lemonbar -f ${Barfont} -f ${Iconfont} -g ${Geometry} -F ${Foregcolor} -B ${Backgcolor} -d &
