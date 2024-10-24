#!/bin/bash

echo "This script's function is to collect basic system information, it can be used for Linux Forensics"

echo ""
echo ""

echo "OS Release is:"
grep -i pretty* /etc/os-release | cut -d"=" -f 2
echo ""

echo "==================================================================="
echo ""
echo "Some users informations"
tail -n 5 /etc/passwd | column -t -s :
echo ""


echo "==================================================================="
echo ""
echo "Some groups informations"
tail -n 5 /etc/group | column -t -s :
echo ""

#This excerpt from the script was aided by AI
echo "==================================================================="
echo ""
echo "Sudoers file is:"
if sudo cat /etc/sudoers; then
    echo "Sudoers file displayed successfully."
else
    echo "Failed to read the sudoers file. Check permissions."
fi


echo "==================================================================="
echo ""
echo "logins events:"
last -f /var/log/wtmp
echo ""


echo "==================================================================="
echo ""
echo "authentications logs informations:"
tail /var/log/auth.log
echo ""
