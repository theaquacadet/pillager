#!/bin/bash

#Download directory
#change default path by editing /media/HDD/incoming to wherever you want
SAVEPATH="${1:-/media/HDD/incoming}"

echo -n "Link to pillage: "

read LINK

wget -r -np -e robots=off --reject index.html,index.html* ${LINK} -P $SAVEPATH

echo "Finished. Yar."
