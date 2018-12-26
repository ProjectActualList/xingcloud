FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER weixingmial@126.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN mkdir -p /xing-config

WORKDIR /xing-config

EXPOSE 8888

ADD ./xing-config/target/xing-config.jar ./

CMD java -Djava.security.egd=file:/dev/./urandom -jar xing-config.jar
