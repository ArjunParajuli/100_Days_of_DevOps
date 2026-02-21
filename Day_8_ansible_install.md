### Task:
Install ansible version 4.10.0 on Jump host using pip3 only. Make sure Ansible binary is available globally on this system, i.e all users on this system are able to run Ansible commands.

Install the exact version system-wide: <br>
sudo pip3 install ansible==4.10.0
<br>
Verify the correct version is installed<br>
ansible --version<br>

NOTE: When we install using root user(sudo), Ansible binaries are made globally available to all users on the system.
