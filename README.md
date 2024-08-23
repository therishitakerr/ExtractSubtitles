
# Extract Subtitles

The `ExtractSubtitles` project provides a script for extracting subtitles from video files. This tool is useful for obtaining subtitle tracks from videos in various formats and saving them as separate subtitle files.

## Overview

The `ExtractSubs.sh` script extracts subtitle tracks from video files and saves them into separate subtitle files. It supports multiple subtitle formats and allows batch processing of videos.

## Features

- **Extract Subtitles**: Extracts subtitles from video files and saves them in different formats.
- **Batch Processing**: Handles multiple video files in a directory.
- **Flexible Format Support**: Supports various subtitle formats.

## Requirements

- **FFmpeg**: A powerful multimedia framework for processing video and audio files.
  - **Ubuntu/Debian**: Install with `sudo apt-get install ffmpeg`
  - **MacOS**: Install with `brew install ffmpeg`
  - **Windows**: Download from [FFmpeg official website](https://ffmpeg.org/download.html)

## Usage

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/therishitakerr/ExtractSubtitles.git
   cd ExtractSubtitles
   ```

2. **Prepare Your Files**:
   Place your video files in the `videos/` directory. The script will process these files to extract subtitles.

3. **Run the Script**:
   Make the script executable and run it to extract subtitles:
   ```bash
   chmod +x ExtractSubs.sh
   ./ExtractSubs.sh
   ```

   **Script Usage**:
   The script processes all video files in the `videos/` directory and extracts any available subtitle tracks. The extracted subtitles will be saved in the `subtitles/` directory.

4. **Check the Output**:
   The script will generate subtitle files in the output directory specified in the script, named according to the video files.

## Example

1. **Initial Directory Structure**:
   ```
   /path/to/extractsubtitles/
   ├── videos/
   │   ├── movie1.mp4
   │   └── movie2.mkv
   ```

2. **After Running the Script**:
   Subtitle files will be saved in the `subtitles/` directory:
   ```
   /path/to/extractsubtitles/
   ├── videos/
   │   ├── movie1.mp4
   │   └── movie2.mkv
   └── subtitles/
       ├── movie1.srt
       └── movie2.srt
   ```

## Configuration

You can modify the `ExtractSubs.sh` script to adjust the input and output directories or to customize the FFmpeg command options according to your needs.

## Notes

- Ensure that your video files contain subtitle tracks before running the script.
- The script assumes that video files are in a `videos/` directory and extracted subtitles will be saved in a `subtitles/` directory.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for suggestions, improvements, or bug fixes.
