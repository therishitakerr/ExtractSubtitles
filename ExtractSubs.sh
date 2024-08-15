#!/bin/bash

# Function to extract subtitles from media files
extract_subs() {
    local dir="$1"
    
    # Loop through files and directories in the given directory
    for filepath in "$dir"/*; do
        if [[ -d "$filepath" ]]; then
            # Recursively process subdirectories
            extract_subs "$filepath"
        elif [[ -f "$filepath" ]]; then
            # Extract file extension and base name
            local ext="${filepath##*.}"
            local basename="${filepath%.*}"
            local dirname="$(dirname "$filepath")"

            # Check if the file is a supported media format
            if [[ "$ext" =~ ^(mkv|mp4|wmv|mov)$ ]]; then
                local present
                present=$(mediainfo --Inform="General;%TextCount%" "$filepath")
                echo "$present"

                # Extract subtitles if present
                if (( present > 0 )); then
                    ffmpeg -i "$filepath" "$dirname/$(basename "$basename").srt"
                fi
            fi
        fi
    done
}

# Start extraction process from the current directory
extract_subs "$(pwd)"
