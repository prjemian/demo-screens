#!/bin/bash

CWD=${HOME}/Documents/projects/demo-screens

export EPICS_DISPLAY_PATH=:.
export EPICS_DISPLAY_PATH=:/tmp
export EPICS_DISPLAY_PATH=:${CWD}/medm

OPTS+=" -x"
OPTS+=" -noMsg"

medm ${OPTS} related_display1.adl &
