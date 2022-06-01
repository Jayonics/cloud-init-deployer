FROM ubuntu:22.04

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

CMD [ "/bin/bash", "-c", "echo 'done'" ]