# 04 — Localhost Port Scanning with Nmap

## Goal
Validate local service discovery.

### Baseline scan
```bash
nmap -sS -p 1-1024 127.0.0.1

