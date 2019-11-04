# Simple web application deployed on TomCat

FROM tomcat:8.0-alpine

LABEL maintainer="kutzhanov@gmail.com"

COPY sample.war /usr/local/tomcat/webapps

RUN ln -sf /dev/stdout /opt/bitnami/apache-tomcat/logs/catalina.out

EXPOSE 8080

CMD ["catalina.sh", "run"]
