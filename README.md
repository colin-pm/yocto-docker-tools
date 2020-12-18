# Yocto Docker Tools

Docker images for building with Yocto.

This project is currently a work in progress.

> :warning: **Warning:**
The images listed below are intended for **generating open-source library packages** and we cannot guarantee any kind of stability. We strongly recommend using your own generated images for production environments taking the dockerfiles in this repository as a reference.

## Images

### Ubuntu
* Ubuntu 16.04 (LTS)
* Ubuntu 18.04 (LTS)
* Ubuntu 20.04 (LTS)

### Fedora
* TODO Fedora 30
* TODO Fedora 31
* TODO Fedora 32

### CentOS
* CentOS 7
* CentOS 8

### Debian
* TODO Debian 8.x (Jessie)
* TODO Debian 9.x (Stretch)
* TODO Debian 10.x (Buster)

### OpenSUSE
* TODO OpenSUSE Leap 15.1

## Instructions

1. Build the docker image
```bash
docker build -t centos-yocto centos/centos8
```

2. Run the container
```bash
docker run -it centos-yocto
```

3. Set up the build environment
```bash
git clone git://git.yoctoproject.org/poky && source poky/oe-init-build-env
```

4. Build
```bash
bitbake core-image
```

