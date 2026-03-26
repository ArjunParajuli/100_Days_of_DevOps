### Root Cause
The mariadb-prepare-db-dir script (which runs before starting MariaDB) is failing because it cannot change ownership of the data directory /var/lib/mysql (and its contents) to the mysql user.

Fix Steps 
### 1. Become root (if not already)
sudo -i

### 2. Fix ownership of the entire MariaDB data directory
chown -R mysql:mysql /var/lib/mysql

### 3. Set correct permissions (recommended)
chmod -R 750 /var/lib/mysql
find /var/lib/mysql -type d -exec chmod 750 {} \;
find /var/lib/mysql -type f -exec chmod 640 {} \;

### 4. Fix the runtime directory as well (in case it's also causing issues)
mkdir -p /run/mariadb
chown -R mysql:mysql /run/mariadb
chmod 755 /run/mariadb

### 5. Remove any stale PID file if present
rm -f /run/mariadb/mariadb.pid \

Now Start the Service
Bashsystemctl start mariadb
systemctl status mariadb
