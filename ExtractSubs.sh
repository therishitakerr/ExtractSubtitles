#!/bin/bash
function extractSubs() {
	for i in "$1/"*;
	do
		if [[ -d "$i"  ]] ; then
			for file in "$i/"*
			do
				extractSubs "$i"
			done
    		elif [[ -f $i ]];then
			echo ""
			echo ""
			echo "--------------------------------------------"
			echo ""
			echo ""
	        	e=$(basename "$i" | awk -F "." '{print $NF}')
        		echo "extension:"
			echo "$e"
        		a=$(basename "$i" ".$e")
        		echo "base:"
        		echo "$a"
			if [[ ($i == *.mkv) || ($i == *.mp4) || ($i == *.wmv) || ($i == *.mov) ]]; then
				present=$(mediainfo --Inform="General;%TextCount%" "$i")
				echo $present
				if [[ "$present" > 0 ]]; then
	        			ffmpeg -i "$i" "$a.srt"
				fi
			fi
			echo ""
			echo ""
			echo "--------------------------------------------"
			echo ""
			echo ""
		fi
	done
}

extractSubs "$(pwd)"
