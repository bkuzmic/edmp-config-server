FROM java:8

MAINTAINER Marcel Birkner <marcel.birkner@codecentric.de>

ENV http_proxy 'http://hrzg-proxy01.etk.extern.eu.ericsson.se:8080'
ENV https_proxy 'http://hrzg-proxy01.etk.extern.eu.ericsson.se:8080'

ADD target/edmp-config-server*.jar app.jar

RUN bash -c 'touch /app.jar'

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
