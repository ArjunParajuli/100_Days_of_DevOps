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

SELinux is a security guard inside Linux.
Normal Linux permissions say:
👉 “This user can read/write this file”

SELinux adds another rule:
👉 “Even if you can read it, are you ALLOWED to?”

So even root or a hacked application can be blocked.
Root can do anything only if the action is allowed by SELinux policy.
Now access depends on 3 things:
Linux permissions (rwx)
User (root or not)
SELinux policy

Think of SELinux Like This:
Imagine:
Root = CEO
SELinux = Government Law

Even the CEO:
Can’t break the law
Must follow rules

But the CEO:
Can change the law legally

👉 Root can modify SELinux policies


Why disable SELinux after installing it?

Because SELinux:
Can break applications suddenly
Needs policies tuned per application
Can cause services to fail with no obvious error

Real-world practice:
Install SELinux
Disable it
Configure apps + policies safely
Re-enable SELinux later
👉 This avoids production outages.

