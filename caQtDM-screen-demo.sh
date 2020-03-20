#!/bin/bash

# export CAQTDM_DISPLAY_PATH=.:/tmp:${HOME}/Documents/projects/demo-screens/caqtdm
export CAQTDM_DISPLAY_PATH=.:/tmp:${HOME}/Documents/projects/demo-screens/medm
export CAQTDM_OPTIMIZE_EPICS3CONNECTIONS=true
export QT_PLUGIN_PATH=/usr/local/epics/extensions/lib/linux-x86_64
# caQtDM -style plastique -noMsg screen1.ui
caQtDM -style plastique -noMsg screen1.adl
