FROM mysql:5.7

MAINTAINER xing(weixingmail@126.com)

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

COPY ./doc/db/1schema.sql /docker-entrypoint-initdb.d

COPY ./doc/db/2xing.sql /docker-entrypoint-initdb.d

COPY ./doc/db/3xing_ac.sql /docker-entrypoint-initdb.d