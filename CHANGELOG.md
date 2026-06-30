
## Unreleased



feat(alloy): implement Docker log collection for Loki

- discover Docker containers via Docker API
- collect container logs from JSON log files
- add compose service and project labels
- forward logs to Loki
- keep OTLP metrics pipeline for Prometheus


### Added
- Grafana 13.1-slim
- Prometheus 3.5.4
- Alloy 1.17.0
- Loki 3.6.12
- OTLP metrics pipeline
- Proxmox VE 9 OTEL integration