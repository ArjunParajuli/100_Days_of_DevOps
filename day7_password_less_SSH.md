### The system admins team of xFusionCorp Industries has set up some scripts on jump host that run on regular intervals and perform operations on all app servers in Stratos Datacenter. To make these scripts work properly we need to make sure the thor user on jump host has password-less SSH access to all app servers through their respective sudo users (i.e tony for app server 1). Based on the requirements, perform the following:
#### Set up a password-less authentication from user thor on jump host to all app servers through their respective sudo users.

1. Generate SSH Key: in jump host server <br>
ssh-keygen -t rsa -b 4096

2. Now copy thor's public key to each app server’s sudo user.<br>
ssh-copy-id tony@stapp01<br>
ssh-copy-id steve@stapp02<br>
ssh-copy-id banner@stapp03<br>

3. Now Verify password-less login works<br>
ssh tony@stapp01   whoami && exit<br>
ssh steve@stapp02  whoami && exit<br>
ssh banner@stapp03 whoami && exit<br>
