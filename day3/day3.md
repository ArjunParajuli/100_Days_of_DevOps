## The goal is to disable direct SSH access for the root user on all application servers in the Stratos Datacenter. This ensures that no one can log in directly as root over SSH.


## SSH Configuration Options:
PermitRootLogin no: Disable root login
PasswordAuthentication no: Disable password auth
PubkeyAuthentication yes: Enable key-based auth
Port 2222: Change default port

# Edit the SSH configuration file
sudo vi /etc/ssh/sshd_config


# Find the line:
PermitRootLogin yes


# Change it to:
PermitRootLogin no


# If the line is commented (#PermitRootLogin ...), uncomment it and set it to no.

# Verify the change
sudo sshd -T | grep permitrootlogin

# repeat on all app servers

