FROM docker.io/library/mysql:lts

ENV MYSQL_ROOT_PASSWORD=root090215
ENV MYSQL_DATABASE=animedb
ENV MYSQL_USER=edgar
ENV MYSQL_PASSWORD=090215

COPY my.cnf /etc/mysql/conf.d/my.cnf
COPY 1_types.sql /docker-entrypoint-initdb.d/
COPY 2_genres.sql /docker-entrypoint-initdb.d/
COPY 3_anime_final.csv /docker-entrypoint-initdb.d/
COPY 4_anime_genres.csv /docker-entrypoint-initdb.d/
COPY 5_load_anime.sh /docker-entrypoint-initdb.d/
RUN chmod +x /docker-entrypoint-initdb.d/5_load_anime.sh
