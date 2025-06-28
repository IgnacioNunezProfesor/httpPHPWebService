FROM mysql:latest
COPY ./sqlscript/my.cnf /etc/mysql/conf.d/my.cnf
#COPY ./sqlscript/*.sql /docker-entrypoint-initdb.d/
EXPOSE ${MYSQL_OUTPORT}