FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER weixingmail@126.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN mkdir -p /xing-codegen

WORKDIR /xing-codegen

EXPOSE 5003

ADD ./xing-visual/xing-codegen/target/xing-codegen.jar ./

CMD java -Djava.security.egd=file:/dev/./urandom -jar xing-codegen.jar
