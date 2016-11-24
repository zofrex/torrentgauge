FROM mysql:5.7

ENV MYSQL_DATABASE ocelot
ENV MYSQL_ROOT_PASSWORD super-secret-password
COPY settings.cnf /etc/mysql/conf.d/settings.cnf
ADD https://raw.githubusercontent.com/WhatCD/Gazelle/63b337026d49b5cf63ce4be20fdabdc880112fa3/gazelle.sql /docker-entrypoint-initdb.d/db.sql
RUN chmod a+rwx /docker-entrypoint-initdb.d/db.sql
