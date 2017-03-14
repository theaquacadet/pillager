#!/bin/bash
[[ -d $HOME/.pillager ]] || mkdir $HOME/.pillager
#Download directory
currentdir="$PWD"
SAVEPATH="${1-$currentdir}"
#Save link adresses to /home/*/.pillager/links
list=$HOME/.pillager/list
echo -n "Link to pillage: "

read LINK

echo "$LINK" >> "$list"
wget -r -np -nc -e robots=off -c --reject index.html,index.html* ${LINK} -P $SAVEPATH

echo "Finished. Yar."
