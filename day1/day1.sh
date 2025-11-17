#!/bin/bash
# ssh into server using a user in that server
ssh tony@stapp01

# Switch to root (if needed, depends on environment)
sudo su -

# Check if user already exists
cat /etc/passwd | grep arzunn

# Creating the User With Non-Interactive Shell
useradd -s /usr/sbin/nologin arzunn

# Show final entry
grep arzunn /etc/passwd
