#!/bin/bash 
sudo sfdisk /dev/sdb < sda.fdisk

sudo mkfs -t ntfs /dev/sdb2
sudo mount -t ntfs -o umask=007,gid=046,uid=0,nls=utf8 /dev/sdb2 /home/Backup

#sudo sfdisk /dev/sdb --force < sda.fdisk

#sudo mkfs -t vfat /dev/sdb2
#sudo mount -t vfat auto /dev/sdb2 /home/Backup


#sudo sfdisk /dev/sdb --force < sda.fdisk

#sudo mkfs -t exfat /dev/sdb3
#sudo mount -t vfat auto /dev/sdb2 /home/Backup


