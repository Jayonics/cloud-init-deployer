FROM ubuntu:22.04 AS base
ENV DOWNLOAD_TARGET=${DOWNLOAD_TARGET:-"ubuntu-22.04-preinstalled-server-arm64+raspi"}
ENV OUTPUT_DIR=${OUTPUT_DIR:-"/download"}
# DEPENDENCIES STAGE #
# Set shell to bash
SHELL ["/bin/bash", "-c"]
# Create the volume mountpoint directory.
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


# IMG DOWNLOAD & EXTRACT STAGE #
FROM base AS extract
# Download the latest ubuntu rpi img
RUN wget --show-progress --progress=bar:force:noscroll -q -O- "https://cdimage.ubuntu.com/releases/22.04/release/$DOWNLOAD_TARGET.img.xz" \
| unxz -v -T 0 > "$OUTPUT_DIR/$DOWNLOAD_TARGET.img" && \
echo -e "\e[1;32;1;40mSuccessfully Extracted $DOWNLOAD_TARGET.img\e[0m" \
&& echo -e "\e[1;32;1;40mFull path: $OUTPUT_DIR/$DOWNLOAD_TARGET.img\e[0m" \
|| echo -e "\e[1;31;1;40mFailed to extract $DOWNLOAD_TARGET.img\e[0m"



# IMG TO VOLUME STAGE #
# Shrink the Docker image by reverting to base Ubuntu image
FROM ubuntu:22.04 AS minified
WORKDIR /workspace
# Shell to bash
SHELL ["/bin/bash", "-c"]
# Copy the disk img to the workspace volume
COPY --from=extract "/download/ubuntu-22.04-preinstalled-server-arm64+raspi.img" "/workspace/"

VOLUME ["/workspace"]
CMD ls -al /workspace