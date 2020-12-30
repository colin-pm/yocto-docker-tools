FROM centos:centos8

LABEL maintainer="Colin McAllister <colinmca242@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive

RUN dnf install -y 'dnf-command(config-manager)' \
    && dnf -y install epel-release \
    && dnf install dnf-plugins-core \
    && dnf config-manager --set-enabled powertools \
    && dnf -y update \
    && dnf -y install \
        gawk \
        make \
        wget \
        tar \
        bzip2 \
        gzip \
        python3 \
        unzip \
        perl \
        patch \
        diffutils \
        diffstat \
        git \
        cpp \
        gcc \
        gcc-c++ \
        glibc-common \
        glibc-devel \
        glibc-langpack-en \
        texinfo \
        chrpath \
        ccache \
        socat \
        perl-Data-Dumper \
        perl-Text-ParseWords \
        perl-Thread-Queue \
        python3-pip \
        python3-GitPython \
        python3-jinja2 \
        python3-pexpect \
        xz \
        which \
        SDL-devel \
        xterm \
        rpcgen \
        mesa-libGL-devel \
        glibc-langpack-en \
        openssh-server \
        openssh-clients \
    && useradd -ms /bin/bash yocto \
    && printf "yocto:yocto" | chpasswd \
    && printf "yocto ALL= NOPASSWD: ALL\\n" >> /etc/sudoers \
    && echo 'export LANG=en_US.UTF-8' > ~yocto/.bashrc

USER yocto
WORKDIR /home/yocto
