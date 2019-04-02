# lighthouse

Lighthouse is my attempt at a minimal latency video/image streamer for use in robotics.

It is built to run on Raspberry Pi at the moment, using raspiCam to get data from raspberry pi cameras. The idea looking forward is to support generic USB cameras as well. 

The platform is currently strictly Linux, depending mostly on sockets.


## Installation
run make to create the lighthouse binary in ./build

## Dependencies
Currently the project depends on raspiCam and turboJPEG. These are included in the repo, but not nicely linked and set up in the makefile right now. The easiest way to build is to make the deps and install them.

