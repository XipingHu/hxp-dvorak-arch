#!/bin/bash
# description: change keyboard
# author: hxp
# email: hxp201406@gmail.com
# usage: ./switch_kb.sh <keyboard>


# Check if two keymap configuration exists
if [ ! -e '.Xmodmap_HHKB' ];then
  echo 'Configuration of HHKB does not exist!'
  exit 10
fi
if [ ! -e '.Xmodmap_HP' ];then
  echo 'Configuration of HP does not extst!'
  exit 10
fi
if [ ! -e '.Xmodmap_origin' ];then
  echo 'Configuration of origin keyboard not exist'
  exit 10
fi

# Check if a keyboard is assigned
if [[ $1 = '' ]];then
  echo 'No keyboard is assigned, swiching to origin'
  xmodmap '.Xmodmap_origin'
fi

# Change keyboard mapping
if [[ $1 = 'HHKB' ]];then
  echo 'Switching to HHKB'
  xmodmap '.Xmodmap_HHKB'
fi

if [[ $1 = 'HP' ]];then
  echo 'Switching to HP'
  xmodmap '.Xmodmap_HP'
fi

echo 'Complete!'

exit 0