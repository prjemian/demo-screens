#!/bin/bash

CWD=${HOME}/Documents/projects/demo-screens

# export CAQTDM_DISPLAY_PATH=.:/tmp:${HOME}/Documents/projects/demo-screens/caqtdm
export CAQTDM_DISPLAY_PATH=:.
export CAQTDM_DISPLAY_PATH=:/tmp
export CAQTDM_DISPLAY_PATH=:${CWD}/caqtdm
export CAQTDM_DISPLAY_PATH=:${CWD}/caqtdm/autoconvert
export CAQTDM_DISPLAY_PATH=:${CWD}/medm

export CAQTDM_OPTIMIZE_EPICS3CONNECTIONS=true
export QT_PLUGIN_PATH=/usr/local/epics/extensions/lib/linux-x86_64

OPTS+=" -style plastique"
OPTS+=" -noMsg"

caQtDM ${OPTS} related_display1.adl &
