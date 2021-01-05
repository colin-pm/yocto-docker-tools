FROM ubuntu:16.04

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
    && useradd -ms /bin/bash yocto \
    && printf "yocto:yocto" | chpasswd \
    && adduser yocto sudo \
    && printf "yocto ALL= NOPASSWD: ALL\\n" >> /etc/sudoers \
    && /usr/sbin/locale-gen en_US.UTF-8 \
    && dpkg-reconfigure locales \
    && locale-gen en_US.UTF-8 \
    && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 \
    && echo 'dash dash/sh boolean false' | debconf-set-selections \
    && dpkg-reconfigure dash \
    && echo 'export LC_ALL=en_US.UTF-8' >> ~yocto/.bashrc \
    && echo 'export LANG=en_US.UTF-8' >> ~yocto/.bashrc \
    && echo 'export LANGUAGE=en+US.UTF-8' >> ~yocto/.bashrc \
    && chown yocto:yocto ~yocto/.bashrc \
    && chmod 755 ~yocto/.bashrc

COPY install-buildtools.sh / 
RUN bash /install-buildtools.sh \
    && rm /install-buildtools.sh \
    && cat /opt/poky/3.2.1/environment-setup-* >> ~yocto/.bashrc


USER yocto
WORKDIR /home/yocto
