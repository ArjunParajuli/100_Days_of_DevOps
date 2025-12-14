ssh <user>@<app-server-ip>
sudo vi /etc/ssh/sshd_config
# PermitRootLogin yes, change to no
sudo sshd -T | grep permitrootlogin #check for change

