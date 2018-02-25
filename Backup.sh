DBNAME=appli_web
DATE=`date +"%Y-%m-%d"`
DB_BACKUP="backups/mysql_backup/`date +%Y-%m-%d`"
SQLFILE=$DBNAME-${DATE}.sql
mkdir -p $DB_BACKUP
mysqldump --opt --user=root --password=toor $DBNAME > $SQLFILE
gzip $SQLFILE
mv $SQLFILE* $DB_BACKUP/
