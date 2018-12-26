FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER weixingmail@126.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN mkdir -p /xing-activiti

WORKDIR /xing-activiti

EXPOSE 5005

ADD ./xing-visual/xing-activiti/target/xing-activiti.jar ./

CMD java -Djava.security.egd=file:/dev/./urandom -jar xing-activiti.jar
