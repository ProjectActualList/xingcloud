FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER weixingmail@126.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN mkdir -p /xing-eureka

WORKDIR /xing-eureka

EXPOSE 8761

ADD ./xing-eureka/target/xing-eureka.jar ./

CMD java -Djava.security.egd=file:/dev/./urandom -jar xing-eureka.jar
