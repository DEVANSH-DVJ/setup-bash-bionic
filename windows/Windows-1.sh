mkdir /home/devansh/Windows;

echo '#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.

mount -t ntfs /dev/sda4 /home/devansh/Windows

exit 0' | sudo tee /etc/rc.local;
sudo chmod +x /etc/rc.local;

## Reboot required then run Windows-2.sh
#sudo reboot;
