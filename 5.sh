#!/bin/bash

touch disk.txt
du -sh /home/ec2-user >>disk.txt
echo disk.txt