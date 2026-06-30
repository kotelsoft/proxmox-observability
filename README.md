# Observability Stack

Infrastructure monitoring for the home datacenter.

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
| Loki | 3100 | Planned | Logs |
| Alloy | 4317/4318 | testing | OTLP Collector |

## Start
```bash
docker compose up -d
```

## Stop
```bash
docker compose down
```

## Validate
```bash
docker compose config
```
