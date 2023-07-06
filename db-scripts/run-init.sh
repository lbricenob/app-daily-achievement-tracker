sleep 90s
for file in /usr/src/init-scripts/*.sql; do /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P $SA_PASSWORD -d master -i $file; done