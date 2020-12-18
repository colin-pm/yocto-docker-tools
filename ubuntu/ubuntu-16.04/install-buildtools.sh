#! /bin/bash

set -e

if [ "$(uname -m)" = "aarch64" ]; then
    BUILDTOOLS="aarch64-buildtools-extended-nativesdk-standalone-3.2.1.sh"
    SHA256SUM="8371d2cab0a405c3de41fa184a9c0d47b4e5a687d6fe7f765297ab47464b756c"
elif [ "$(uname -m)" = "x86_64" ]; then
    BUILDTOOLS="x86_64-buildtools-extended-nativesdk-standalone-3.2.1.sh"
    SHA256SUM="431452f611c8c4954ff56a555286a083fe0764b14207a19498b144ae8012e285"
else
    echo "Unsupported architecture, can't install buildtools."
    exit 1
fi


wget https://downloads.yoctoproject.org/releases/yocto/yocto-3.2.1/buildtools/${BUILDTOOLS}

echo "${SHA256SUM} ${BUILDTOOLS}" > SHA256SUMS
sha256sum -c SHA256SUMS
rm SHA256SUMS

bash ${BUILDTOOLS} -y
rm ${BUILDTOOLS}
