#!/bin/bash

# 1. Quietly check if the backup server is reachable
# -c 1: send 1 packet
# -W 2: wait 2 seconds for a response
# &> /dev/null: hide all output
if ! ping -c 1 -W 2 backup &> /dev/null; then
    exit 0
fi

# 2. Copy the fstab file
cp /etc/fstab /home/lars/bin

# 3. Run the rsync backup
rsync -azP --delete \
  --exclude "*Downloads*" \
  --exclude "*VirtualBox*" \
  --exclude "*vagrant*" \
  --exclude 'stil' \
  --exclude "*node_modules*" \
  --exclude ".gradle" \
  --exclude ".class" \
  --exclude ".cache" \
  --exclude ".m2" \
  --exclude ".config" \
  --exclude ".npm" \
  --exclude ".vscode" \
  --exclude "VirtualBox VMs" \
  --exclude ".local" \
  /home/lars lholmgaa@backup:/mnt/usb/lars_home_laptop2