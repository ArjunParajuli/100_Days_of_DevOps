# Day 001: Linux User Setup with Non-interactive Shell

**Difficulty**:  Beginner | **Category**: Linux Administration

## 🎯 Objective

Create a user with non-interactive shell for your organization on a specific server. This is essential for service accounts and automated processes that don't require interactive login capabilities.

## 📋 Prerequisites

- Access to a Linux server (CentOS/Ubuntu/RHEL)
- sudo privileges
- Basic understanding of Linux user management

## 🔧 Technologies Used

- Linux user management commands
- SSH access
- System administration

## Steps

1. First, login into the app server using `SSH`:

    ```sh
    ssh user@app-server-ip
    ```
    ssh tony@stapp01

    > It will ask for user password, enter the correct password.

2. After login into server, run the following command to create user with non-interactive shell

    Switching to Root User
    sudo su -
    Enter the password again.
    Now we are root.

    Now create user:
    useradd -s -m /usr/sbin/nologin javed

    `s`: for shell, here we are giving nologin shell

    `m`: for user home directory, It will create a directory with user-name under /home

3. Verify the result

    ```sh
    cat /etc/passwd
    ```

    It should give you a list of users where you will find your created user. It will look like this:
    `javed:x:1003:1004::/home/javed:/usr/sbin/nologin`

    Try to login using:

    ```sh
    sudo su user-name
    ```

    Output: `This account is currently not available.`

## Verification & Troubleshooting

### Common Issues

- **Permission denied**: Ensure you have sudo privileges
- **User already exists**: Check existing users with `cat /etc/passwd | grep username`
- **Shell not found**: Verify `/usr/sbin/nologin` exists on your system

### Additional Commands

```bash
# List all users with nologin shell
grep nologin /etc/passwd

# Check user details
id username

# Remove user if needed
sudo userdel -r username
```

## Related Topics

# A non-interactive shell is a shell that does NOT allow the user to log in or run commands interactively. In simple terms: It’s a “login disabled” shell — the user exists, but they cannot open a terminal session. Usage: To create users that are only meant for services, automation tools, or background processes, not real people(eg, system process, agents. Such users should not be able to log in via SSH or terminal.)
- Linux user management best practices

## Key Takeaways
- Non-interactive shells prevent direct user login
- Service accounts should use `/usr/sbin/nologin` or `/bin/false`


## Good to Know?

### Linux User Management

- **User Types**: Regular users, system users, service accounts
- **Shell Types**: `/bin/bash` (interactive), `/usr/sbin/nologin` (non-interactive), `/bin/false` (deny access)
- **User Database**: `/etc/passwd` stores user information, `/etc/shadow` stores passwords

### useradd Command Options

- `-m`: Create home directory
- `-s`: Specify shell
- `-d`: Custom home directory path
- `-g`: Primary group
- `-G`: Additional groups
- `-e`: Account expiry date

### Security Best Practices

- Service accounts should use non-interactive shells
- Regular users need interactive shells like `/bin/bash`
- Always verify user creation with multiple commands
- Use principle of least privilege
