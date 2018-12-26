FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER weixingmail@126.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN mkdir -p /xing-auth

WORKDIR /xing-auth

EXPOSE 3000

ADD ./xing-auth/target/xing-auth.jar ./

CMD java -Djava.security.egd=file:/dev/./urandom -jar xing-auth.jar
