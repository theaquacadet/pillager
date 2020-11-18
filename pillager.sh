#!/bin/bash
[[ -d $HOME/.pillager ]] || mkdir "$HOME/.pillager"
SAVEPATH="$PWD"
INDEX="--reject index.html,index.html*"
list=$HOME/.pillager/list
while getopts 'id:' flag; do
	case "${flag}" in
		i) INDEX=" " ;;
		d) SAVEPATH="${OPTARG}" ;;
		*) exit 1 ;;
	esac
done

echo -n "Link to pillage: "

read -r LINK

echo "$LINK" >> "$list"
wget -r -np -nc -e robots=off -c $INDEX "${LINK}" -P "$SAVEPATH"

echo "Finished. Yar."
