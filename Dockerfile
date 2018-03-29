FROM java:8-jre-alpine

VOLUME /tmp
EXPOSE 8080
ADD build/libs/docker-logback-0.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'
ENTRYPOINT exec java $JAVA_OPTS -jar /app.jar
