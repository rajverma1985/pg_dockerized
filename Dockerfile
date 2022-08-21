FROM postgres
RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8
ENV PGDATA=${PWD}/pg_data
ENV POSTGRES_INITDB_WALDIR=${PWD}/wal_logs
ENV POSTGRES_INITDB_ARGS="--data-checksums"
COPY postgresql.conf postgresql.conf
RUN  chown -R postgres:postgres "postgresql.conf" && chmod 777 "postgresql.conf"
RUN mkdir -p /logs && chown -R postgres:postgres "/logs" && chmod 777 "/logs"
COPY custom_role.sql /docker-entrypoint-initdb.d/
CMD ["-c", "config_file=postgresql.conf"]
