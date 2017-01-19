#!/bin/bash
xvfb :9 --screen 0 1920x1080x32 &> /var/log/xvfb.log
DISPLAY=:9.0
export DISPLAY
wine $@
