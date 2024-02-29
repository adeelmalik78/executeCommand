export PGPASSWORD=secret
export PATH="/Applications/pgAdmin 4.app/Contents/SharedSupport":$PATH

psql -h localhost -U postgres --command "\COPY table1 FROM PROGRAM 'gzip -dc data.csv.gz' DELIMITER ',' CSV HEADER; "

