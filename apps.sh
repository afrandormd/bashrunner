#!/usr/bin/bash
#afrandormd/15/07/22

prefix="am start --user 0 -n"
success="[] application has opened"

#colors
default="\033[00m"
red="\033[31m"
green="\033[32m"
white="\033[37m"


#list-package-apps
acode="com.foxdebug.acode/com.foxdebug.acode.MainActivity"
kiwi="com.kiwibrowser.browser/com.google.android.apps.chrome.Main"

#for repeat to open program
repeat(){
   sleep 2
   mainmenu
}

#menu of list programs can open
menu() {
   clear
   echo -e $green"Running apps with termux"
   echo -e $white"1. Acode"
   echo -e $white"2. Kiwi-Browser"
   echo -e $red"[x] exit the program"
   mainmenu
}

#function for running the programs
mainmenu() {
   echo -e -n "\n==> ";read pil
   #Acode-editor
   if [ $pil == "1" ];then
      ${prefix} ${acode} &> /dev//null
      echo -e "$green""$success"
      repeat
   #Kiwi-browser
   elif [ $pil == "2" ];then
      ${prefix} ${kiwi} &> /dev//null
      echo -e "$green""$success"
      repeat
   #Exit-program
   elif [ $pil == "x" ];then
      exit
   else
      echo -e "[!] sorry your input is wrong or not listed"
      repeat
   fi
}

menu
