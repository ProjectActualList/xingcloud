FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER weixingmail@126.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN mkdir -p /xing-upms

WORKDIR /xing-upms

EXPOSE 4000

ADD ./xing-upms/xing-upms-server/target/xing-upms-server.jar ./

CMD java -Djava.security.egd=file:/dev/./urandom -jar xing-upms-server.jar
