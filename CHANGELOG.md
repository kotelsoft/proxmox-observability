
## Unreleased
v0.3.0 — Logging complete ✅
v0.4.0 — Monitoring complete
v0.5.0 — Dashboards
v0.6.0 — Alerting
v1.0.0 — First stable GitHub release

### Added

- Proxmox Grafana Alloy configuration
- Documentation for Docker and Proxmox Alloy configurations

### Changed

- Reorganized Alloy configuration into dedicated `docker` and `proxmox` directories

### Added

- Grafana Alloy deployment for Proxmox VE nodes
- Journald log collection from Proxmox hosts
- Docker log collection using discovery.docker and loki.source.file
- Automatic Docker Compose labels (project, service)

### Changed

- Split Alloy configuration into central collector and Proxmox node roles

### Fixed

- Removed unknown_service labels from Docker logs
- Simplified journald log collection pipeline