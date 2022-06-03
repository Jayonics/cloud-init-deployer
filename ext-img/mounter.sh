#!/usr/bin/env bash

#### FUNCTION BEGIN
# Gets the partitions of a raw disk img.
# GLOBALS:
# 	DOWNLOAD_TARGET - The absolute path to the origin raw disk image.
# ARGUMENTS:
#
# OUTPUTS:
# 	The partitions of the raw disk image.
# RETURN:
# 	0 if success, non-zero otherwise.
### FUNCTION END
function GetPartitions() {
  fdisk -lu
}