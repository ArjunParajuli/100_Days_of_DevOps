ssh <user>@<app-server-ip>
sudo vi /etc/ssh/sshd_config
# PermitRootLogin yes, change to no
sudo systemctl restart sshd # restart ssh service
sudo sshd -T | grep permitrootlogin #check for change

