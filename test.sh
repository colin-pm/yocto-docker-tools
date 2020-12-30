#!/bin/bash

git clone git://git.yoctoproject.org/poky && \
	source poky/oe-init-build-env && \
	bitbake --dry-run core-image
