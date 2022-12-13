#!/bin/sh
# ----------------------------------------------------------------------------
echo "[INFO] remove tables db"
psql -U my_user -W -h my_host -d 'my_db' -a -f 09-clear-db.sql
echo "[INFO] start setup db"
psql -U my_user -W -h my_host -d 'my_db' -a -f 02-create-words.sql
psql -U my_user -W -h my_host -d 'my_db' -a -f 03-create-test.sql
psql -U my_user -W -h my_host -d 'my_db' -a -f 04-create-test-words.sql
psql -U my_user -W -h my_host -d 'my_db' -a -f 05-create-student-input.sql
psql -U my_user -W -h my_host -d 'my_db' -a -f 06-create-knowledge.sql
echo "[INFO] done setup db"
