#!/bin/sh
umount /mnt/$KOPIA_SNAPSHOT_ID
rmdir /mnt/$KOPIA_SNAPSHOT_ID
zfs destroy $1@$KOPIA_SNAPSHOT_ID