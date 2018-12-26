FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER weixingmail@126.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN mkdir -p /xing-tx-manager

WORKDIR /xing-tx-manager

EXPOSE 5004
EXPOSE 9998

ADD ./xing-visual/xing-tx-manager/target/xing-tx-manager.jar ./

CMD java -Djava.security.egd=file:/dev/./urandom -jar xing-tx-manager.jar
