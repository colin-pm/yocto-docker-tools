FROM centos:centos7

LABEL maintainer="Colin McAllister <colinmca242@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive

RUN yum install -y epel-release \
    && yum makecache \
    && yum install -y \
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
        file \
        git \
        cpp \
        gcc \
        gcc-c++ \
        glibc-devel \
        texinfo \
        chrpath \
        socat \
        perl-Data-Dumper \
        perl-Text-ParseWords \
        perl-Thread-Queue \
        python36-pip \
        xz \
        which \
        SDL-devel \
        xterm \
        mesa-libGL-devel \
        openssh-server \
        openssh-clients \
    && pip3 install GitPython jinja2 \
    && useradd -ms /bin/bash yocto \
    && printf "yocto:yocto" | chpasswd \
    && printf "yocto ALL= NOPASSWD: ALL\\n" >> /etc/sudoers \
    && echo 'export LC_ALL=en_US.UTF-8' > ~yocto/.bashrc \
    && echo 'export LANG=en_US.UTF-8' > ~yocto/.bashrc \
    && echo 'export LANGUAGE=en+US.UTF-8' > ~yocto/.bashrc

COPY install-buildtools.sh / 
RUN bash /install-buildtools.sh \
    && rm /install-buildtools.sh \
    && cat /opt/poky/3.2.1/environment-setup-* > ~yocto/.bashrc

USER yocto
WORKDIR /home/yocto
