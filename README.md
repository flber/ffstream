# ffstream

A simple (or not-so-simple in the case of the `extra/` directory) set of tools to screen capture and stream using ffmpeg.
For a more experimental set of applications, the `extra/` directory has scripts which are very unstable but perhaps interesting for those interested in more niche usecases (the purpose of everything there should be decently documented, but for details on implementation specifics please just send me an email while I work on better documentation!).

The goal for the main directory is to provide a couple of tools which should Just Work* though for the moment they're limited to usage on linux.

*which in this case means: will work with, ideally, under half an hour of debugging :)

## Requirements and setup

there are sort of a lot.

First of all, for now this only works on linux. This is due to the fact that scripting for complex audiovisual programs is *much* easier on linux (in my experience), though my longer-term goal is to port this over to a cross platform c codebase (or maybe go or something fancy like that).

### ffst-main

For the main program, `ffst-main`, you'll need `dunst`, `ffmpeg`, and `xrandr` (all available for most package managers), and `head`, `cut`, and `sed`, which should come pre-installed on most distributions. Additionally, for audio support you'll need alsa and pulseaudio, which are also probably already installed on your system.

`ffst-main` also requires that you have an environment variable called "STREAM_KEY" which contains your stream key. As-is, `ffst-main` only works with twitch, but most streaming services expose a similar url which you can use instead if you'd like by replacing the existing twitch url.

Future scripts will be added which extend the base functionality, and these will be documented as they are added.
