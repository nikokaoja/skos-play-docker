FROM tomcat:8.0-alpine

RUN apk update && apk upgrade && apk add nano --no-cache curl

RUN curl -L https://github.com/niva83/vocbench3/raw/master/vocbench/tomcat-users.xml -o tomcat-users.xml \
    && curl -L https://github.com/sparna-git/skos-play/releases/download/0.8.6/skos-play-0.8.6.war -o skos-play.war \
    && cp skos-play.war /usr/local/tomcat/webapps/ \
    && cp tomcat-users.xml /usr/local/tomcat/conf/

EXPOSE 8080
CMD ["catalina.sh", "run"]
