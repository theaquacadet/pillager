#!/bin/bash

#Download directory
#change default path by editing /media/HDD/incoming to wherever you want
currentdir="$PWD"
SAVEPATH="${1:-$currentdir}"

echo -n "Link to pillage: "

read LINK

wget -r -np -e robots=off -c --reject index.html,index.html* ${LINK} -P $SAVEPATH

echo "Finished. Yar."
