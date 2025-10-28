# 03 — Packet Capture with tcpdump

## Goal
Watch the TCP handshake + payload for a simple netcat exchange.

### Terminal A (capture)
```bash
tcpdump -i any -nn tcp port 9999

