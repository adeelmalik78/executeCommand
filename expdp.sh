export PATH="/opt/oracle/product/12.1/client/bin":$PATH



export USERID=${1}
export DBHOST=${2}
export DUMPFILE=${3}
export LOGFILE=${4}
export DIRECTORY=${5}

echo
echo USERID=${USERID}
echo DBHOST=${DBHOST}
echo DUMPFILE=${DUMPFILE}
echo LOGFILE=${LOGFILE}
echo DIRECTORY=${DIRECTORY}


# expdp userid=TEMPADMIN@WKSTQA1 dumpfile=EXPDP_DEP_liquibase.dmp logfile=DEP_MS_export.log directory=EXPDP_MS_DMP
export EXPDP_CMD="expdp userid=${USERID}@${DBHOST} dumpfile=${DUMPFILE} logfile=${LOGFILE} directory=${DIRECTORY}"
echo EXPDP_CMD=${EXPDP_CMD}

# ${EXPDP_CMD}
