#!/bin/bash

currentdir="$PWD"
SAVEPATH="${1:-$currentdir}"

read -p 'Link to pillage: ' LINK

wget -r -nc -np -e robots=off -c --reject index.html,index.html* ${LINK} -P $SAVEPATH

echo "Finished. Yar."
