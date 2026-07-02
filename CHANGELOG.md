
## Unreleased
v0.3.0 — Logging complete ✅
v0.4.0 — Monitoring complete
v0.5.0 — Dashboards
v0.6.0 — Alerting
v1.0.0 — First stable GitHub release

## [Unreleased]

### Added

- Native OPNsense RFC5424 syslog ingestion.
- OPNsense filterlog parser.
- Extraction of firewall metadata (interface, action, direction, protocol, IP metadata).
- TP-Link Omada raw syslog listener using Alloy experimental `syslog_format = "raw"`.
- Omada syslog header parser.
- RFC3339 timestamp normalization for Omada logs.
- Login/Logout event parser for Omada devices.
- Structured metadata extraction for Omada authentication events.

### Added
- Added RFC5424 syslog receiver for network devices.
- Added support for TCP and UDP syslog transport.
- Added syslog metadata relabeling (host, facility, severity, sender IP, process ID).
- Added vendor-specific OPNsense processing pipeline.
- Added initial OPNsense filterlog parser extracting:
  - interface
  - action
  - direction
  - IP version
  - protocol

### Added
- Syslog ingestion via Alloy (RFC5424)
- TCP and UDP syslog listeners
- Environment-based port configuration for syslog
- Support for OPNsense firewall log streaming

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