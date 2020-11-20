FROM registry.cn-beijing.aliyuncs.com/mytest1_1/jdk:v1
MAINTAINER 1664496696@qq.com

ADD target/account-0.0.1.jar /opt/app.jar
ADD src/main/resources/config /opt/config

ENV JAVA_OPTS=""
EXPOSE 8080

WORKDIR /opt
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar --spring.profiles.active=dev