#!/bin/bash

CWD=${HOME}/Documents/projects/demo-screens

export PYDM_DISPLAYS_PATH+=:.
export PYDM_DISPLAYS_PATH+=:/tmp
export PYDM_DISPLAYS_PATH+=:${CWD}/pydm
export PYDM_DISPLAYS_PATH+=:${CWD}/pydm/autoconvert

OPTS+=" --hide-nav-bar"
OPTS+=" --hide-menu-bar"
OPTS+=" --hide-status-bar"

pydm ${OPTS} related_display1.ui &
