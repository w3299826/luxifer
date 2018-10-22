FROM centos:7/jdk:8

EXPOSE 8761

CMD java -Duser.timezone=GMT+08 -jar /eureka.jar --spring.profiles.active=docker

COPY target/*.jar /eureka.jar