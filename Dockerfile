FROM postgres

COPY ./docker-entrypoint.sh /

CMD ["psql"]
