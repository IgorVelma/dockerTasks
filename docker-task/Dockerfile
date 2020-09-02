FROM maven:3.6.3-jdk-8-slim as build
ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

COPY script.sh /usr/init_script/script.sh

EXPOSE 8080

WORKDIR /usr/init_script/

RUN chmod +x /usr/init_script/script.sh
ENTRYPOINT ["/usr/init_script/script.sh"]
