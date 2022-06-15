# ffmpeg-stream-tools
A very unstable collection of tools to use ffmpeg for streaming

Both `ffmpeg` and `zmqsend` were built from the [official ffmpeg repository](https://github.com/FFmpeg/FFmpeg) with the flag `--enable-libzmq` when running the configure script before building. Make was also run with the option `alltools` to generatre the `zmqsend` utility.

As a result of this, both of these binaries will need to be built for your system if you fork this repo. 

## Example
```
> ./ffmpeg-webcam-fast-filter.sh "/dev/video2" "hue-filter.txt" | ./mpv-fast.sh
> echo Parsed_hue_1 h 270 | ./zmqsend
```
