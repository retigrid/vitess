# create JSON schema from mysql table structure
TABLE_SCHEMA=$1
TABLE_NAME=$2

# make sure schema and table names are supplied
if [ $# -ne 2 ];then
echo "DB and table name required"
exit 1
fi

cat > json_query.txt << heredoc
select CONCAT('{"name": "', COLUMN_NAME, '","type":"', IF(DATA_TYPE like "%int%", "INTEGER",IF(DATA_TYPE = "decimal","FLOAT","STRING")) , '"},') as json from information_schema.columns where TABLE_SCHEMA = '$TABLE_SCHEMA' AND TABLE_NAME = '$TABLE_NAME';
heredoc
echo '[' >  $TABLE_NAME.json
mysql -S /vtdataroot/tabletdata/mysql.sock  -u vt_dba -Bs < json_query.txt | sed '$s/,$//' >> $TABLE_NAME.json
mysql -S /vtdataroot/tabletdata/mysql.sock  -u vt_dba $TABLE_SCHEMA -Bse"show create table $TABLE_NAME\G" > $TABLE_NAME.sql
#mysql -Bs < json_query.txt | sed '$s/,$//' >> $TABLE_NAME.json
#mysql $TABLE_SCHEMA -Bse"show create table $TABLE_NAME\G" > $TABLE_NAME.sql
echo ', {"name": "hostname","type":"STRING"} ]' >>  $TABLE_NAME.json

