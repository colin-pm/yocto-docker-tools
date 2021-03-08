# Yocto Docker Tools

Docker images for building with Yocto.

> :warning: **Warning:**
The images listed below are intended for **generating open-source library packages** and we cannot guarantee any kind of stability. We strongly recommend using your own generated images for production environments taking the dockerfiles in this repository as a reference.

## Images

### Ubuntu
* [Ubuntu 16.04 (LTS)](https://hub.docker.com/repository/docker/colinmca/yocto-ubuntu16)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/colinmca/yocto-ubuntu16)
* [Ubuntu 18.04 (LTS)](https://hub.docker.com/repository/docker/colinmca/yocto-ubuntu18)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/colinmca/yocto-ubuntu18)
* [Ubuntu 20.04 (LTS)](https://hub.docker.com/repository/docker/colinmca/yocto-ubuntu20)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/colinmca/yocto-ubuntu20)

### Fedora
* [Fedora 31](https://hub.docker.com/repository/docker/colinmca/yocto-fedora31)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/colinmca/yocto-fedora31)
* [Fedora 32](https://hub.docker.com/repository/docker/colinmca/yocto-fedora32)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/colinmca/yocto-fedora32)

### CentOS
* [CentOS 7](https://hub.docker.com/repository/docker/colinmca/yocto-centos7)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/colinmca/yocto-centos7)
* [CentOS 8](https://hub.docker.com/repository/docker/colinmca/yocto-centos8)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/colinmca/yocto-centos8)

### Debian
* [Debian 10.x (Buster)](https://hub.docker.com/repository/docker/colinmca/yocto-debian10)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/colinmca/yocto-debian10)

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

