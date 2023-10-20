#!/bin/sh
set -e
zfs snapshot $1@$KOPIA_SNAPSHOT_ID
mkdir -p /mnt/$KOPIA_SNAPSHOT_ID
mount -t zfs $1@$KOPIA_SNAPSHOT_ID /mnt/$KOPIA_SNAPSHOT_ID
echo KOPIA_SNAPSHOT_PATH=/mnt/$KOPIA_SNAPSHOT_ID