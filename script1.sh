#!/bin/bash
# Script 1: System Identity Report
# Author: Shreshth Awasthi | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Shreshth Awasthi"
SOFTWARE_CHOICE="Python"

# --- System Info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
HOME_DIR=$HOME
DISTRO=$(lsb_release -d 2>/dev/null | cut -f2)

# --- Display ---
echo "======================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "Kernel Version  : $KERNEL"
echo "User            : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE"
echo "Distro          : $DISTRO"
echo "License         : Linux OS is generally under GPL license"
echo "======================================"
