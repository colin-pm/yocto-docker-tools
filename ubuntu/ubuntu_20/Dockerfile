FROM ubuntu:20.04

LABEL maintainer="Colin McAllister <colinmca242@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -qq update \
    && apt-get -qq install -y --no-install-recommends \
       locales \
       file \
       git \
       gawk \
       wget \
       git-core \
       diffstat \
       unzip \
       texinfo \
       gcc-multilib \
       build-essential \
       chrpath \
       socat \
       cpio \
       python3 \
       python3-pip \
       python3-pexpect \
       xz-utils \
       debianutils \
       iputils-ping \
       python3-git \
       python3-jinja2 \
       libegl1-mesa \
       libsdl1.2-dev \
       pylint3 \
       xterm \
       python3-subunit \
       mesa-common-dev \
       openssh-server \
       sudo \
    && useradd -ms /bin/bash yocto \
    && printf "yocto:yocto" | chpasswd \
    && adduser yocto sudo \
    && printf "yocto ALL= NOPASSWD: ALL\\n" >> /etc/sudoers \
    && /usr/sbin/locale-gen en_US.UTF-8 

USER yocto
WORKDIR /home/yocto
