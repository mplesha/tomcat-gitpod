FROM gitpod/workspace-full:latest

USER root

RUN curl -O https://apache.volia.net/tomcat/tomcat-9/v9.0.33/bin/apache-tomcat-9.0.33.zip \
    && mkdir /opt/tomcat \
    && unzip apache-tomcat-9.0.33.zip -d /opt/tomcat
    
USER gitpod
