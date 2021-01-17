FROM jenkins/jenkins:lts-alpine

USER root

RUN apk add --update --repository http://dl-3.alpinelinux.org/alpine/edge/main python3 ansible py3-pip py3-libvirt py3-lxml openssh-client &&\
    pip3 install pywinrm &&\
    pip3 install docker &&\
    pip3 install hcloud &&\
    rm -rf /var/cache/apk/*
