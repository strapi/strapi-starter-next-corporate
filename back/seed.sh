#!/bin/sh

# This script will migrate schema and data from a SQLite3 database to PostgreSQL.
# Schema translation based on http://stackoverflow.com/a/4581921/1303625.
# Some column types are not handled (e.g blobs).

PG_HOST=$1
PG_PORT=$2
PG_DB_NAME=$3
PG_USER_NAME=$4

SQLITE_DUMP_FILE="dump.sql"

# sqlite3 $SQLITE_DB_PATH .dump > $SQLITE_DUMP_FILE

# PRAGMAs are specific to SQLite3.
sed -i '/PRAGMA/d' $SQLITE_DUMP_FILE
# Convert sequences.
sed -i '/sqlite_sequence/d ; s/integer PRIMARY KEY AUTOINCREMENT/serial PRIMARY KEY/ig' $SQLITE_DUMP_FILE
# Convert column types.
sed -i 's/datetime/timestamp/g ; s/integer[(][^)]*[)]/integer/g ; s/text[(]\([^)]*\)[)]/varchar(\1)/g' $SQLITE_DUMP_FILE

# createdb -U $PG_USER_NAME $PG_DB_NAME
# psql --set=sslmode=require -h $DB_HOST -p $DB_PORT $PG_DB_NAME $PG_USER_NAME < $SQLITE_DUMP_FILE
psql postgres://nnqcigqtduvvci:2c828383443fca9d8c0099c6c45788fec94d4f27f8a535c18e576b8d91486f9b@ec2-50-19-26-235.compute-1.amazonaws.com:5432/d2ersdkerv22ml?sslmode=require < $SQLITE_DUMP_FILE

# Update Postgres sequences.
psql postgres://nnqcigqtduvvci:2c828383443fca9d8c0099c6c45788fec94d4f27f8a535c18e576b8d91486f9b@ec2-50-19-26-235.compute-1.amazonaws.com:5432/d2ersdkerv22ml?sslmode=require -c "\ds" | grep sequence | cut -d'|' -f2 | tr -d '[:blank:]' |
# psql --set=sslmode=require -h $DB_HOST -p $DB_PORT $PG_DB_NAME $PG_USER_NAME -c "\ds" | grep sequence | cut -d'|' -f2 | tr -d '[:blank:]' |
while read sequence_name; do
  table_name=${sequence_name%_id_seq}

  # psql --set=sslmode=require -h $DB_HOST -p $DB_PORT $PG_DB_NAME $PG_USER_NAME -c "select setval('$sequence_name', (select max(id) from $table_name))"
  psql postgres://nnqcigqtduvvci:2c828383443fca9d8c0099c6c45788fec94d4f27f8a535c18e576b8d91486f9b@ec2-50-19-26-235.compute-1.amazonaws.com:5432/d2ersdkerv22ml?sslmode=require -c "select setval('$sequence_name', (select max(id) from $table_name))"
done