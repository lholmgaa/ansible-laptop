cp /etc/fstab /home/lars/bin
rsync -azP --delete --exclude "*Downloads*" --exclude "*VirtualBox*" --exclude "*vagrant*" --exclude 'stil' --exclude "*node_modules*" --exclude ".gradle" --exclude ".class" --exclude ".cache" --exclude ".m2" --exclude ".config" --exclude ".npm" --exclude ".vscode" --exclude "VirtualBox VMs" --exclude ".local" --exclude ".cache" /home/lars lholmgaa@backup:/mnt/usb/lars_home_laptop
~      
