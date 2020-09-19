FROM centos as tmp

RUN     yum -y update && \
    yum -y install wget && \
    yum install -y tar.x86_64 && \
    yum clean all

RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN wget https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.57/bin/apache-tomcat-8.5.57.tar.gz
RUN tar xvf apache-tomcat-8.5.57.tar.gz
RUN ls apache-tomcat-8.5.57/
RUN mv apache-tomcat-8.5.57/* /opt/tomcat/.
RUN ls /opt/tomcat/


FROM ihorvelma/dockertask_v2:latest

RUN mkdir /opt/tomcat/
COPY --from=tmp /opt/tomcat/ /opt/tomcat/
RUN ls /opt/tomcat/

COPY script_tomcat.sh /usr/init_script/script_tomcat.sh
COPY build.sh /usr/init_script/build.sh
COPY deploy.sh /usr/init_script/deploy.sh
COPY builddeploy.sh /usr/init_script/builddeploy.sh

VOLUME /tmp

EXPOSE 8080

WORKDIR /usr/init_script/

RUN chmod +x /usr/init_script/script_tomcat.sh
ENTRYPOINT ["/usr/init_script/script_tomcat.sh"]
