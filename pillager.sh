#!/bin/bash
[[ -d $HOME/.pillager ]] || mkdir "$HOME/.pillager"
SAVEPATH="$PWD"
LIST=$HOME/.pillager/list
INDEX="--reject index.html,index.html*"
FLAGS="-r -np -nc "
LOG="/tmp/website-size-log"

while getopts 'ishmd:l:' flag; do
	case "${flag}" in
		i) INDEX=" " ;;
		h) 
			echo "HELP"
			echo "By default, pillager will download all files"
		  echo "recursively from a given link, avoiding index.html files,"
			echo "to the current working directory. A list of pillaged"
			echo "links is saved to ~/.pillager/list."
			echo "If no link is provided when called, you'll be prompted for a link."
			echo "OPTIONS"
			echo "-d [PATH]: Change download directory"
			echo "-h:        Show this message"
			echo "-i:        Include index.html files"
			echo "-l [LINK]: Link to pillage"
			echo "-m:        Mirror site"
			echo "-s:        Estimate link size"
			exit 1 ;;
		d) SAVEPATH="${OPTARG}" ;;
		m) 
			FLAGS="-mkEpnp "
			INDEX=" " ;;
		l)
			LFLAG=1
			LINK="${OPTARG}" ;;
		s) SFLAG=1 ;;
		*) exit 1 ;;
	esac
done

if [ -z "$LINK" ]
then
	echo -n "Link to pillage: "
	read -r LINK
fi

if [ -v "$SFLAG" ]
then
	echo "Crawling site..."
	wget -rSnd -np -l inf --spider -o "$LOG" "${LINK}"
	echo "Finished crawling."
	sleep 1s
	echo "Estimated size: $(\
		grep -e "Content-Length" "$LOG" | \
		awk '{sum+=$2} END {printf("%.0f", sum / 1024 / 1024)}'\
	) Mb"
	rm "$LOG"
else
	echo "$LINK" >> "$LIST"
	wget $FLAGS -e robots=off -c $INDEX "${LINK}" -P "$SAVEPATH"
fi

echo "Finished. Yar."
