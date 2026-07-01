# Docker Alloy Configuration

This directory contains the Grafana Alloy configuration for the central observability host running the Docker Compose stack.

## Responsibilities

* Receive OTLP metrics from Proxmox VE
* Forward metrics to Prometheus
* Discover Docker containers
* Collect Docker container logs
* Forward logs to Loki

## Usage

Copy `config.alloy` to the Alloy configuration directory on the Docker host and restart the Alloy service.

This configuration is intended for the central observability server only.
