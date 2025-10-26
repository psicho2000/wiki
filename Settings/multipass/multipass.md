# First time setup
1. Install multipass and Noble
   ```bash
   brew install multipass
   multipass launch noble --name noble
   ```
2. Configure SSH access
   * Append the public on remote Ubuntu
     ```bash
     multipass exec noble -- bash
     vim ~/.ssh/authorized_keys
     ```
   * Get the ip
     ```bash
     multipass info noble
     ```
   * Configure local SSH
     ```bash
     cfg edit sshconfig
     ```
   * Add a new entry
     ```
     Host ubuntu
         HostName <ip>
         IdentityFile ~/.ssh/<identity_file>
         User ubuntu
     ```

# Maintenance commands
```bash
multipass start noble
multipass stop noble
multipass delete noble
multipass purge
```

