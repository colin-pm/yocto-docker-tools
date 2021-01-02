FROM fedora:31

RUN dnf -y update \
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
        glibc-devel \
        glibc-langpack-en \
        glibc-common \
        hostname \
        texinfo \
        chrpath \
        ccache \
        perl-Data-Dumper \
        perl-Text-ParseWords \
        perl-Thread-Queue \
        perl-bignum \
        socat \
        python3-pexpect \
        findutils \
        which \
        file \
        cpio \
        python \
        python3-pip \
        xz \
        python3-GitPython \
        python3-jinja2 \
        SDL-devel \
        xterm \
        rpcgen \
        mesa-libGL-devel \
        openssh-server \
        openssh-clients \
    && useradd -ms /bin/bash yocto \
    && printf "yocto:yocto" | chpasswd \
    && printf "yocto ALL= NOPASSWD: ALL\\n" >> /etc/sudoers \
    && echo 'export LANG=en_US.UTF-8' >> ~yocto/.bashrc

USER yocto
WORKDIR /home/yocto
CMD /bin/bash
