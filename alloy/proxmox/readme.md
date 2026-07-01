# Proxmox Alloy Configuration

This directory contains the Grafana Alloy configuration for Proxmox VE nodes.

## Responsibilities

* Collect system logs from `journald`
* Forward logs to the central Loki instance

## Usage

Install Grafana Alloy on each Proxmox node, copy `config.alloy` to the Alloy configuration directory, and restart the Alloy service.

The same configuration can be used on all Proxmox nodes without modification.
