# pyopenwrt

openwrt &amp; python docker starter image

# Introduction

This build does the following:

- uses openwrt based image
- updates the opkg manager
- installs python3
- installs pip
- upgrades pip to latest
- installs bash
- copies over a startup shell script
- copies over a python startup file
- copies over the Dockerfile
- runs the start up script ( which calls the python startup file )

# Build (to build the image locally )

docker build -t pyopenwrt .

# Run (to run a container locally )

docker run -it pyopenwrt

or

docker run -it pyopenwrt /bin/bash
