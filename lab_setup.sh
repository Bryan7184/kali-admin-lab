#!/bin/bash
# lab_setup.sh — Kali / Debian lab bootstrap
set -euo pipefail

if [ "$(id -u)" -ne 0 ]; then
  echo "ERROR: run as root or with sudo." >&2
  exit 1
fi

export DEBIAN_FRONTEND=noninteractive
apt-get update -y
apt-get upgrade -y

apt-get install -y --no-install-recommends \
  man sudo vim nano wget curl git net-tools iproute2 procps

apt-get install -y --no-install-recommends \
  traceroute dnsutils nmap tcpdump iputils-ping netcat-openbsd

apt-get install -y --no-install-recommends \
  ufw htop whois lsof lshw rsync unzip

apt-get install -y --no-install-recommends \
  tree tmux screen mlocate

updatedb || true

SHARE_DIR="/mnt/share"
[ -d "$SHARE_DIR" ] || { mkdir -p "$SHARE_DIR"; chmod 775 "$SHARE_DIR"; }

echo "==> Key commands check:"
for cmd in ip ifconfig nc nmap tcpdump traceroute dig ping vim git tmux tree; do
  if command -v "$cmd" >/dev/null 2>&1; then
    echo "  [OK] $cmd -> $(command -v $cmd)"
  else
    echo "  [MISSING] $cmd"
  fi
done

echo "==> Try: ip a; ping -c 3 8.8.8.8; dig google.com; nc -lvp 9999"
