# Observability Stack

Infrastructure monitoring for the home datacenter.

## Architecture
Network device
        │
RFC5424 Syslog
        │
loki.source.syslog
        │
loki.relabel
        │
loki.process.<vendor>
        │
loki.write
        │
    Loki



### obs-01

- Grafana
- Prometheus
- Loki
- Grafana Alloy (OTLP + Docker logs)

### Proxmox Cluster Nodes

- Grafana Alloy
- journald log collection
- OTLP metrics

### Log Flow

Docker containers
→ Alloy (obs-01)
→ Loki

journald
→ Alloy (Proxmox)
→ Loki

### Metrics Flow

Proxmox VE
→ Alloy
→ Prometheus
→ Grafana

## Components

- Grafana
- Prometheus
- Loki
- Alloy

## Deployment

TBD

## Roadmap

✅ Grafana
✅ Prometheus
✅ Alloy
✅ OTLP від Proxmox → Alloy → Prometheus
✅ Docker logs
✅ Loki

⏳ Exporters
⏳ Ceph
⏳ Alerting
⏳ Dashboards

v0.4.0
✅ Proxmox
✅ Docker
✅ Linux VM
✅ GitHub documentation

↓

v0.5.0
✅ OPNsense
✅ Home Assistant

↓

v0.6.0
✅ Dashboards
✅ Alerting
✅ Recording Rules

↓

v1.0.0
Stable Home Lab Observability Platform


# Inventory

Source	Metrics	Logs	Status
Proxmox	✅	✅	Done
Docker	—	✅	Done
Linux VM	—	✅	Done
OPNsense	—	⏳	Planned
Home Assistant	⏳	⏳	Planned

## Supported network devices

| Vendor | Status | Notes |
|---------|--------|-------|
| OPNsense | ✅ Initial | RFC5424 + filterlog parser |

## Syslog Ingestion (OPNsense / network devices)

Alloy exposes RFC5424 syslog receiver on:

- TCP: `${SYSLOG_TCP_PORT}`
- UDP: `${SYSLOG_UDP_PORT}`

Current capabilities:
- TCP and UDP syslog
- RFC5424 metadata extraction
- Vendor-specific processing pipelines
- Initial OPNsense filterlog parsing

Supported vendors:
- OPNsense (initial support)

Example OPNsense configuration:
- Remote syslog server: `obs-01.home.lan`
- Port: `1514`
- Protocol: TCP or UDP
- Format: RFC5424

## Syslog ingestion

The observability stack supports multiple syslog pipelines using Grafana Alloy.

### OPNsense

- RFC5424
- TCP/UDP
- Native Alloy syslog receiver
- Firewall (`filterlog`) parsing
- Structured metadata extraction
- Timestamp preserved from the device

### TP-Link Omada

- Raw syslog pipeline (`syslog_format = "raw"`)
- Requires Alloy experimental mode (`--stability.level=experimental`)
- Native header parsing
- Timestamp normalization to RFC3339
- Device timestamp preserved
- Login/Logout event parsing
- Structured metadata extraction

Future work:
- Link Up/Down events
- STP events
- PoE events
- Configuration changes





