#!/bin/sh
Xvfb :0 -screen 0 800x600x24 &
DISPLAY=:0 ./processing-4.0b8/processing-java --sketch=/sketch --run
