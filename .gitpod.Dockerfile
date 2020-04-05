FROM gitpod/workspace-full:latest

USER root

RUN sudo apt-get update \
    && curl -O https://apache.volia.net/tomcat/tomcat-9/v9.0.33/bin/apache-tomcat-9.0.33.zip \
    && mkdir /opt/tomcat \
    && unzip apache-tomcat-9.0.33.zip -d /opt/tomcat \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* \
    && locale-gen en_US.UTF-8

ENV LANG=en_US.UTF-8

USER gitpod
