FROM alpine

RUN apk update
RUN apk add openssh
RUN apk add sshpass
RUN apk add py3-pip
RUN apk add ansible
RUN python3 -m pip install --user ansible
RUN pip3 install docker
RUN export PATH=$PATH:~/.local/bin

WORKDIR /work
