# Kali Linux Admin & Networking Lab 🧠

### Overview
A portable sysadmin and networking practice environment running Kali Linux inside Docker.  
This setup installs a full suite of core administration, networking, and monitoring tools — all ready for Linux+ and cybersecurity skill development.

### Tools Installed
- Core utilities: `vim`, `nano`, `wget`, `curl`, `git`, `iproute2`, `net-tools`
- Network tools: `nmap`, `tcpdump`, `traceroute`, `dnsutils`, `netcat-openbsd`
- System tools: `htop`, `ufw`, `lsof`, `lshw`, `rsync`, `whois`
- QoL: `tree`, `tmux`, `screen`, `locate`

### How to Recreate
```bash
docker run -it --name kali-dev -v C:\docker-share:/mnt/share kalilinux/kali-rolling bash
sudo chmod +x /mnt/share/lab_setup.sh
sudo /mnt/share/lab_setup.sh
