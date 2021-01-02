FROM debian:10

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get clean \
    && apt-get update \
    && apt-get install -y \
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
        locales \
        pylint3 \
        xterm \
        python3-subunit \
        mesa-common-dev \
        openssh-server \
    && useradd -ms /bin/bash yocto \
    && printf "yocto:yocto" | chpasswd \
    && adduser yocto sudo \
    && printf "yocto ALL= NOPASSWD: ALL\\n" >> /etc/sudoers \
    && echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen \
    && locale-gen \
    && echo 'export LANG=en_US.UTF-8' >> ~yocto/.bashrc

USER yocto
WORKDIR /home/yocto
CMD /bin/bash
