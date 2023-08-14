# Node Exporter Ansible Role

This Ansible role is designed to download, install, and start the Node Exporter, which collects system metrics for exposure to the Prometheus monitoring system.

## Role Variables

| Variable Name                    | Default Value                                                                                                      | Description                                                         |
|---------------------------------|--------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| `node_exporter_version`         | `1.1.2`                                                                                                           | The version of Node Exporter to be installed.                       |
| `node_exporter_download_url`    | `https://github.com/prometheus/node_exporter/releases/download/v{{ node_exporter_version }}/node_exporter-{{ node_exporter_version }}.linux-amd64.tar.gz` | URL from where Node Exporter will be downloaded.                    |
| `node_exporter_tmp_archive`     | `/tmp/node_exporter.tar.gz`                                                                                       | Temporary path to store the downloaded Node Exporter archive.       |
| `node_exporter_bin_path`        | `/usr/local/bin/node_exporter`                                                                                    | The destination where the Node Exporter binary will be placed.      |
| `node_exporter_service_file`    | `/etc/systemd/system/node_exporter.service`                                                                       | The path for the Node Exporter systemd service configuration.       |
| `node_exporter_service_name`    | `node_exporter`                                                                                                   | The name of the Node Exporter systemd service.                      |

## Handlers

| Name                 | Description                                                          |
|----------------------|----------------------------------------------------------------------|
| `restart node_exporter` | Restarts the Node Exporter service. Used when there are changes.    |

## Example Playbook

```yaml
- hosts: your_host
  roles:
    - node_exporter
