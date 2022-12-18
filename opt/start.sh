#!bin/bash

export HOST_NAME=`hostname`
echo "HOSTNAME : ${HOST_NAME}"


${LOGSTASH_HOME}/bin/logstash \
    --http.host 0.0.0.0 \
    --config.reload.automatic \
    -f ${CONF_FILE}
