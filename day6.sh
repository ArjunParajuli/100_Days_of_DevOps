# a. Install cronie package on all Nautilus app servers and start crond service.
# b. Add a cron */5 * * * * echo hello > /tmp/cron_text for root user.

# ssh in app server & install package:
sudo yum install cronie -y

# Start and Enable the service:
sudo systemctl start crond
sudo systemctl enable crond

# Verify Service Status:
sudo systemctl status crond

# Switch to root (if not already)
sudo su -

# Add the cron job for root user
# Using crontab -e (interactive): opens vi editor where we paste the given cron & :wq to save & quit vi editor
crontab -e

# Check root's crontab
sudo crontab -l
# Should show: */5 * * * * echo hello > /tmp/cron_text

# List cron processes/jobs (optional)
sudo systemctl status crond
