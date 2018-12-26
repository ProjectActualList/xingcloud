FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER weixingmail@126.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN mkdir -p /xing-monitor

WORKDIR /xing-monitor

EXPOSE 5001

ADD ./xing-visual/xing-monitor/target/xing-monitor.jar ./

CMD java -Djava.security.egd=file:/dev/./urandom -jar xing-monitor.jar
