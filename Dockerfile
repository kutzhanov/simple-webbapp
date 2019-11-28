# Simple web application deployed on TomCat

FROM tomcat:8.0-alpine

LABEL maintainer="kutzhanov@gmail.com"

COPY sample.war /usr/local/tomcat/webapps

EXPOSE 8080

VOLUME /usr/local/tomcat/webapps

CMD ["catalina.sh", "run"]
