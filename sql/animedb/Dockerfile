FROM docker.io/library/mysql:lts

ENV MYSQL_ROOT_PASSWORD=root090215
ENV MYSQL_DATABASE=animedb
ENV MYSQL_USER=edgar
ENV MYSQL_PASSWORD=090215

COPY 1_types.sql /docker-entrypoint-initdb.d/
COPY 2_genres.sql /docker-entrypoint-initdb.d/
COPY 4_animegenres.sql /docker-entrypoint-initdb.d/
COPY 3_animes.sql /docker-entrypoint-initdb.d/