#!/bin/bash
[[ -d $HOME/.pillager ]] || mkdir "$HOME/.pillager"
SAVEPATH="$PWD"
INDEX="--reject index.html,index.html*"
list=$HOME/.pillager/list
while getopts 'ihd:' flag; do
	case "${flag}" in
		i) INDEX=" " ;;
		h) 
			echo "HELP"
			echo "-h:        Show this message"
			echo "-i:        Include index.html files"
			echo "-d [PATH]: Change download directory"
			exit 1 ;;
		d) SAVEPATH="${OPTARG}" ;;
		*) exit 1 ;;
	esac
done

echo -n "Link to pillage: "

read -r LINK

echo "$LINK" >> "$list"
wget -r -np -nc -e robots=off -c $INDEX "${LINK}" -P "$SAVEPATH"

echo "Finished. Yar."
