#!/bin/bash

#df -h | grep sdb
#lsblk | grep sdb

udisksctl mount -b /dev/sdb1
