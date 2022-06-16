# ffmpeg-stream-tools
A very unstable collection of tools to use ffmpeg for streaming

Both `ffmpeg` and `zmqsend` were built from the [official ffmpeg repository](https://github.com/FFmpeg/FFmpeg) with these flags enabled:
 - `--enable-libzmq` 
 - `--enable-libfreetype` 
 - `--enable-libfontconfig` 
 - `--enable-nonfree` 
 - `--enable-gpl` 
 - `--enable-libx264` 
 - `--enable-libxcb`
 `make` was also run with the option `alltools` to generatre the `zmqsend` utility.

As a result of this, both of these binaries will need to be built for your system if you fork this repo. Alternatively, you could try using an ffmpeg binary compiled with all options instead of selectively compiling.

## Scripts
- `audio.py` outputs mic levels
- `level-check.sh` return 1 if the stdin is greater than a threshold
- `window-dimensions.sh` returns the dimensions (in "$Xx$Y" format) of a window
- `window-offset.sh` returns the offset (in ":0.0+$X,$Y" format) of a window
- `ffmpeg-screen.sh` takes the name of a window and a filter and outputs to stdout
- `ffmpeg-webcam-fast-filter.sh` takes webcam path and filter and outputs to stdout
- `zmq-hue-change.sh` continually modifies running hue and text filter
- `zmq-talking-test.sh` checks mic levels and adds talking text indicator to running text filter
- `mpv-fast.sh` displays video from stdin
- `filter.sh` pipes `ffmpeg-webcam-fast-filter.sh` to `mpv-fast`

## Examples
All examples start with an `ffmpeg-{something}.sh` script which produces some output based on a filtergraph file, and pipes to stdout. That stdout can then be piped to `mpv-fast.sh` (which is useful for debugging among other things) or into any other program which accepts a video stream through stdin. By running various modifying scripts, the stream filters can be modified in real-time.

### `zmq-hue-change.sh`
Randomly changes the hue, and updates a text element to display the current hue value.
### `zmq-talking-test.sh` 
Checks active mic levels, and if they exceed a certain threshold, changes a text element to indicate that.
