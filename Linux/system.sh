#!/bin/bash

## Idea for progress bar: https://stackoverflow.com/questions/238073/how-to-add-a-progress-bar-to-a-shell-script

free -h > ~/backups/freemem/free_mem.txt
echo -ne '#####               (25%)\r'
sleep 2
du -d 1 -h -x / 2>/dev/null | sort -n > ~/backups/diskuse/disk_usage.txt
echo -ne '##########          (50%)\r'
sleep 2
lsof > ~/backups/openlist/open_list.txt
echo -ne '###############     (75%)\r'
sleep 2
df -h > ~/backups/freedisk/free_disk.txt
echo -ne '####################(100%)\r'
sleep 2
echo -ne '\n'
echo 'system.sh is complete.'

