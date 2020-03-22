#!/bin/bash

# common GUI starter script

SNAME=${BASH_SOURCE:-$0}
CWD=`dirname ${SNAME}`
SELECTION=$1


usage() {
    echo "Usage: $(basename ${SNAME}) {caQtDM|MEDM|PyDM}"
}


info() {
    echo "SNAME = '${SNAME}'"
    echo "CWD = '${CWD}'"
    echo "SELECTION = '${SELECTION}'"
    echo "basename = '$(basename ${SNAME})'"
}


run_caqtdm() {
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
}


run_medm() {
    export EPICS_DISPLAY_PATH+=.
    export EPICS_DISPLAY_PATH+=:/tmp
    export EPICS_DISPLAY_PATH+=:${CWD}/medm

    OPTS+=" -x"
    OPTS+=" -noMsg"

    echo "EPICS_DISPLAY_PATH = '${EPICS_DISPLAY_PATH}'"
    echo "OPTS = '${OPTS}'"

    medm ${OPTS} related_display1.adl &
}


run_pydm() {
    export PYDM_DISPLAYS_PATH+=:.
    export PYDM_DISPLAYS_PATH+=:/tmp
    export PYDM_DISPLAYS_PATH+=:${CWD}/pydm
    export PYDM_DISPLAYS_PATH+=:${CWD}/pydm/autoconvert

    OPTS+=" --hide-nav-bar"
    OPTS+=" --hide-menu-bar"
    OPTS+=" --hide-status-bar"
    OPTS+=" --log_level ERROR"

    pydm ${OPTS} related_display1.ui &
}

case ${SELECTION} in

    ca | caQtDM | caqtdm)
    run_caqtdm
    ;;

    me | MEDM | medm)
    run_medm
    ;;

    py | PyDM | pydm)
    run_pydm
    ;;

    info)
    info
    ;;

    *)
    usage
    ;;

esac
