- The goal is to disable direct SSH access for the root user on all application servers in the Stratos Datacenter. This ensures that no one can log in directly as root over SSH.


 SSH Configuration Options:
PermitRootLogin no: Disable root login

PasswordAuthentication no: Disable password auth

PubkeyAuthentication yes: Enable key-based auth

Port 2222: Change default port


- Steps:
Firstly ssh into server, then:
1. Edit the SSH configuration file
sudo vi /etc/ssh/sshd_config


2. Find the line:
PermitRootLogin yes


3. Change it to:
PermitRootLogin no

4.Restart the ssh service(so that changes are applied to config)
sudo systemctl restart sshd


- If the line is commented (#PermitRootLogin ...), uncomment it and set it to no.

# Verify the change
sudo sshd -T | grep permitrootlogin / sudo grep -i "permitrootlogin" sshd_config

# repeat on all app servers

