#! /usr/bin/bash
function display_menu {
 echo "Choice from the menu"
 echo "1.Date"
 echo "2.cal"
 echo "3.ls"
 echo "4.pwd"
 echo "5.exit"

 echo "enter your choice : "
 read choice

 return $choice
}

function print_date {
 echo "date= $(date)"
}

function print_cal {
 cal
}

function print_ls {
 ls
}

function print_pwd {
 pwd 
}

while true
do

  display_menu

  choice=$?

  case $choice in
   1)
     print_date
     ;;
   2) 
     print_cal
     ;;
   3)
     print_ls
     ;;
   4) 
     print_pwd
     ;;
   *)
     break
     ;;
  esac
done


