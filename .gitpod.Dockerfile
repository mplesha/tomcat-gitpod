FROM gitpod/workspace-full:latest

USER root

RUN sudo apt-get update \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* \
    && locale-gen en_US.UTF-8

ENV LANG=en_US.UTF-8

USER gitpod
