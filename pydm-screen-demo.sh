#!/bin/bash

export PYDM_DISPLAYS_PATH=.:/tmp:${HOME}/Documents/projects/demo-screens/pydm
OPTS+=" --hide-nav-bar"
OPTS+=" --hide-menu-bar"
OPTS+=" --hide-status-bar"
pydm ${OPTS} screen1.ui
