#!/bin/bash

#Download directory
SAVEPATH=/media/HDD/incoming

echo -n "Link to pillage:"

read LINK

wget -r -np -e robots=off ${LINK} -P $SAVEPATH
