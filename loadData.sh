export PATH="/Applications/pgAdmin 4.app/Contents/SharedSupport":$PATH

# export PGPASSWORD=secret
# psql -h localhost -U postgres --command "\COPY table1 FROM PROGRAM 'gzip -dc data.csv.gz' DELIMITER ',' CSV HEADER; "

echo param1=${1}

source ${1}

psql -h ${HOSTNAME} -U ${PGUSERNAME} --command "\COPY table1 FROM PROGRAM 'gzip -dc data.csv.gz' DELIMITER ',' CSV HEADER; "

