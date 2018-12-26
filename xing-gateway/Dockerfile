FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER weixingmail@126.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN mkdir -p /xing-gateway

WORKDIR /xing-gateway

EXPOSE 9999

ADD ./xing-gateway/target/xing-gateway.jar ./

CMD java -Djava.security.egd=file:/dev/./urandom -jar xing-gateway.jar
