#!/bin/bash
function extractSubs() {
	for i in "$1"/*; do
		if [ -d "$i" ]; then
			extractSubs "$i"
		elif [ -f "$i" ]; then
			e=$(basename "$i" | awk -F "." '{print $NF}')
			a=$(basename "$i" ".$e")
			p=$(dirname "$i")
			if [[ ($i == *.mkv) || ($i == *.mp4) || ($i == *.wmv) || ($i == *.mov) ]]; then
				present=$(mediainfo --Inform="General;%TextCount%" "$i")
				echo "$present"
				if [[ "$present" -gt 0 ]]; then
					ffmpeg -i "$i" "$p/$a.srt"
				fi
			fi
		fi
	done
}

extractSubs "$(pwd)"
