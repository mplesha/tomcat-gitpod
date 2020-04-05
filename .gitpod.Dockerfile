FROM gitpod/workspace-full:latest

USER root

RUN sudo apt-get update \
    && curl -O https://apache.volia.net/tomcat/tomcat-9/v9.0.33/bin/apache-tomcat-9.0.33.zip \
    && mkdir /opt/tomcat \
    && unzip apache-tomcat-9.0.33.zip -d /opt/tomcat \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* \
    && locale-gen en_US.UTF-8 \
    && sudo ln -s /opt/tomcat/apache-tomcat-9.0.33 /opt/tomcat/latest \
    && sudo sh -c 'chmod +x /opt/tomcat/latest/bin/*.sh'

COPY tomcat.service /etc/systemd/system/

ENV LANG=en_US.UTF-8

USER gitpod
