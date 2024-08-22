FROM openjdk:17-jdk-slim
WORKDIR /opt
COPY target/eureka-0.0.1-SNAPSHOT.jar eureka.jar
ENV PORT 8761
EXPOSE 8761
ENTRYPOINT exec java $JAVA_OPTS -jar eureka.jar

###  run commands
#### docker build -t eureka:latest .
#### docker run -p9096:8761 eureka:latest