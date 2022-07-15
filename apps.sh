#!/usr/bin/bash

prefix="am start --user 0 -n"

#list-package-apps
acode="com.foxdebug.acode/com.foxdebug.acode.MainActivity"
kiwi="com.kiwibrowser.browser/com.google.android.apps.chrome.Main"

menu() {
   figlet "naira-runner"
   echo -e "Running apps with termux"
   echo -e "1. Acode"
   echo -e "2. Kiwi-Browser"
   mainmenu
}

mainmenu() {
   echo -e -n "pilih > ";read pil
   if [ $pil == "1" ];then
      ${prefix} ${acode}
   elif [ $pil == "2" ];then
      ${prefix} ${kiwi}
   else
      echo -e "[!] sorry your input is wrong or not listed"
   fi
}

menu
