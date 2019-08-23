#!/bin/bash
mkdir /var/log/history
echo "chmod 777 /var/log/history
USER_IP=`who -u am i 2>/dev/null| awk '{print $NF}'|sed -e 's/[()]//g'`
export HISTFILE=/var/log/history/$(whoami)-$USER_IP-history
" >> /root/.bashrc
source /root/.bashrc

