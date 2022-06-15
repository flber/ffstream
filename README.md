# ffmpeg-stream-tools
A very unstable collection of tools to use ffmpeg for streaming

Both `ffmpeg` and `zmqsend` were built from the [official ffmpeg repository](https://github.com/FFmpeg/FFmpeg) with these flags enabled:
 - `--enable-libzmq` 
 - `--enable-libfreetype` 
 - `--enable-libfontconfig` 
 - `--enable-nonfree` 
 - `--enable-gpl` 
 - `--enable-libx264` 
 `make` was also run with the option `alltools` to generatre the `zmqsend` utility.

As a result of this, both of these binaries will need to be built for your system if you fork this repo. Alternatively, you could try using an ffmpeg binary compiled with all options instead of selectively compiling.

## Scripts
- `audio.py` outputs mic levels
- `ffmpeg-webcam-fast-filter.sh` takes webcam path and filter and outputs to stdout
- `mpv-fast` displays video from stdin
- `filter.sh` pipes `ffmpeg-webcam-fast-filter.sh` to `mpv-fast`
- `hue-change-repeat.sh` continually modifies running hue and text filter
- `talking-text.sh` checks mic levels and adds talking text indicator to running text filter

## Examples
All examples start with `./filter`, which simply starts an ffmpeg stream from a webcam and applies the `filter.txt` file to the stream. By running various modifying scripts, the stream filters can be modified in real-time.

`hue-change-repeat.sh` randomly changes the hue, and updates a text element to display the current hue value.

`talking-text.sh` checks active mic levels, and if they exceed a certain threshold, changes a text element to indicate that.
