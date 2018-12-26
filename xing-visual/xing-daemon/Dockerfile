FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER weixingmail@126.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN mkdir -p /xing-daemon

WORKDIR /xing-daemon

EXPOSE 5002

ADD ./xing-visual/xing-daemon/target/xing-daemon.jar ./

CMD java -Djava.security.egd=file:/dev/./urandom -jar xing-daemon.jar
