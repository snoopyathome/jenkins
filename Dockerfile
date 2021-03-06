FROM jenkins/jenkins:2.289.2-lts-alpine

USER root

RUN wget https://releases.hashicorp.com/terraform/1.0.1/terraform_1.0.1_linux_amd64.zip &&\
    unzip terraform_1.0.1_linux_amd64.zip &&\
    mv terraform /usr/local/bin/terraform &&\
    chmod +x /usr/local/bin/terraform &&\
    rm terraform_1.0.1_linux_amd64.zip &&\
    apk add --update --repository http://dl-3.alpinelinux.org/alpine/edge/main python3 ansible py3-pip py3-libvirt py3-lxml openssh-client &&\
    pip3 install pywinrm &&\
    rm -rf /var/cache/apk/*

USER jenkins
