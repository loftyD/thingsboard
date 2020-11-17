#!/bin/bash

TODAY=`date --iso-8601`
BACKDIR=~/db_backup 

pg_dump -Fc --schema=public -h localhost -U thingsboard > "$BACKDIR/$TODAY.sql"

aws s3 mv "$BACKDIR/$TODAY.sql" s3://thingsboard-ps/db/

# if [ "$?" -ne 0 ]; then echo "Help" | mail -s "Backup failed" leighton.james@comms366.com; exit 1; fi
