# Observability Stack

Infrastructure monitoring for the home datacenter.

## Architecture

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
⏳ Збір логів
⏳ Ceph
⏳ Alerting
⏳ Dashboards


| Service | Port | Status | Description |
|---------|------|--------|-------------|
| Grafana | 3000 | testing | Visualization |
| Prometheus | 9090 | testing | Metrics |
| Loki | 3100 | testing | Logs |
| Alloy | 4317/4318 | testing | OTLP Collector |

