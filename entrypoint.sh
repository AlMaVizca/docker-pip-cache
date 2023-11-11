#!/bin/bash

set -x

DEVPI_SERVERDIR="/data/server"
DEVPI_CLIENTDIR="/data/client"



if [ ! -f  $DEVPI_SERVERDIR/.serverversion ]; then
    echo "[RUN]: Initialise devpi-server"
    devpi-init --serverdir ${DEVPI_SERVERDIR}
fi

echo "[RUN]: Launching devpi-server"
args="--restrict-modify root --host 0.0.0.0 --port 3141 --serverdir ${DEVPI_SERVERDIR}"
exec devpi-server $args --threads 20
