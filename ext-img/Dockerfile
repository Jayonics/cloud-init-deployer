FROM ubuntu:22.04 as base
ENV DOWNLOAD_TARGET=${DOWNLOAD_TARGET:-"ubuntu-22.04-preinstalled-server-arm64+raspi"}
SHELL ["/bin/bash", "-c"]


RUN mkdir -vp /workspace /download
VOLUME ["/workspace"]

# Install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
wget \
kpartx \
parted

FROM base AS devloop
SHELL ["/bin/bash", "-c"]
WORKDIR /workspace
#RUN LOOPDEVICES = $(kpartx -al $DOWNLOAD_TARGET | awk '{print $4}') && export $LOOPDEVICES

RUN echo "Loop devices: ${LOOPDEVICES[@]}" \
&& kpartx -a $DOWNLOAD_TARGET \
&& echo "Img mounted."

CMD sleep 60