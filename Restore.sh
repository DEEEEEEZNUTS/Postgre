DBNAME=appli_web
DATE=`date +"%Y-%m-%d"`
DB_BACKUP="backups/mysql_backup/`date +%Y-%m-%d`"
SQLFILE=$DBNAME-${DATE}.sql
cp -v $DB_BACKUP/$SQLFILE.gz .
gunzip $DB_BACKUP/$SQLFILE.gz
mysql --user=root --password=toor $DBNAME < /$DB_BACKUP/$SQLFILE
rm -v $DB_BACKUP/*.sql;

