FROM ubuntu:22.04 AS base

RUN mkdir -vp /workspace /download
VOLUME ["/workspace"]

# Install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
ca-certificates \
curl \
wget \
gnupg \
lsb-release \
xz-utils \
kpartx

FROM base AS extract

# Download the latest ubuntu rpi img
RUN wget -q -O- 'https://cdimage.ubuntu.com/releases/22.04/release/ubuntu-22.04-preinstalled-server-arm64+raspi.img.xz' \
| unxz -v -T 0 > '/download/ubuntu-22.04-preinstalled-server-arm64+raspi.img'

# Move the image to the workspace

CMD [ "/bin/bash", "-c", "cp -vf /download/ubuntu-22.04-preinstalled-server-arm64+raspi.img /workspace" ]