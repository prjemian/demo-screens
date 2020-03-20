#!/bin/bash

export EPICS_DISPLAY_PATH=.:/tmp:${HOME}/Documents/projects/demo-screens/medm
medm -x -noMsg screen1.adl
