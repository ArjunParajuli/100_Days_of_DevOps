1. Install Required SELinux Packages

sudo yum install -y selinux-policy selinux-policy-targeted policycoreutils


Why:

SELinux is policy-driven

These packages provide enforcement rules and tools


2. Permanently Disable SELinux

Edit the SELinux configuration file:

sudo vi /etc/selinux/config


Change this line:
SELINUX=enforcing
or
SELINUX=permissive

👉 Change to:
SELINUX=disabled


What is SELinux?
SELinux (Security-Enhanced Linux) is a kernel-level security mechanism that enforces mandatory access control (MAC).


