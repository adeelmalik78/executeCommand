export PATH="/opt/oracle/product/12.1/client/bin":$PATH


export USERID=${1}
export DBHOST=${2}
export OWNER=${3}
export DUMPFILE=${3}
export LOGFILE=${4}

echo
echo USERID=${USERID}
echo DBHOST=${DBHOST}
echo OWNER=${OWNER}
echo DUMPFILE=${DUMPFILE}
echo LOGFILE=${LOGFILE}


# exp userid=TEMPADMIN@WKSTQA1 owner=WKSDEPMSUAT file=/path/file_name.dmp log=/path/exportdep.log constraints=y rows=y consistent=y indexes=y statistics=none grants=n compress=n recordlength=65535å buffer=20480000
export EXP_CMD="exp userid=${USERID}@${DBHOST} owner=${OWNER} file=${DUMPFILE} log=${LOGFILE} constraints=y rows=y consistent=y indexes=y statistics=none grants=n compress=n recordlength=65535 buffer=20480000"

echo EXP_CMD=${EXP_CMD}

${EXP_CMD}
