# Linux Alloy Configuration

This directory contains the Grafana Alloy configuration for generic Linux virtual machines and LXC containers.

## Responsibilities

* Collect system logs from `journald`
* Add useful log labels (service, level, node)
* Forward logs to the central Loki instance

## Usage

Install Grafana Alloy on the target Linux system, copy `config.alloy` to the Alloy configuration directory, and restart the Alloy service.

The same configuration can be used on Debian, Ubuntu, Rocky Linux, AlmaLinux, Fedora, and other `systemd`-based distributions.
