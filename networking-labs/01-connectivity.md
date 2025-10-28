# 01 — Connectivity Basics

## Goals
- Identify interfaces/IPs
- Prove outbound connectivity
- See default routes

## Commands
```bash
ip a
ip route show
ping -c 4 8.8.8.8
ping -c 4 google.com
traceroute google.com   # apt install traceroute if needed

