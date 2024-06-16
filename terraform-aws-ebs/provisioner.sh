#!/bin/bash
sudo mkfs -t ext4 /dev/xvdh
sudo mkdir /mnt/data
sudo mount /dev/xvdh /mnt/data
sudo mkdir -p /mnt/data/my_structure/{dir1,dir2,dir3}
sudo touch /mnt/data/my_structure/dir1/file1.txt
sudo touch /mnt/data/my_structure/dir2/file2.txt
sudo touch /mnt/data/my_structure/dir3/file3.txt
