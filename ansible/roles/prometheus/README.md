# Prometheus Ansible Role

This Ansible role installs and configures Prometheus, a powerful open-source system monitoring and alerting toolkit.

## Requirements

- A target machine with CentOS or any other YUM-based Linux distribution.
- Ansible 2.9 or higher (though earlier versions might work as well).

## Role Variables

| Variable Name | Default Value | Description |
|---------------|---------------|-------------|
| `prometheus_user` | `prometheus` | User under which Prometheus will run. |
| `prometheus_group` | `prometheus` | Group under which Prometheus will run. |
| `prometheus_version` | `2.45.0` | Version of Prometheus to install. |
| `prometheus_download_url` | [Prometheus URL for 2.45.0](https://github.com/prometheus/prometheus/releases/download/v2.45.0/prometheus-2.45.0.linux-amd64.tar.gz) | URL from which Prometheus will be downloaded. |
| `prometheus_tmp_path` | `/tmp/prometheus-2.45.0.linux-amd64.tar.gz` | Temporary path where Prometheus tarball will be downloaded. |
| `prometheus_checksum` | Checksum value for 2.45.0 | SHA-256 checksum for the Prometheus tarball. |
| `prometheus_version_directory` | `prometheus-2.45.0.linux-amd64` | Directory name after Prometheus tarball extraction. |
| `prometheus_contents` | List of items from extracted directory | Contents from the extracted directory that need to be moved to `/etc/prometheus`. |
| `prometheus_config_path` | `/etc/prometheus/prometheus.yml` | Location of the Prometheus configuration file. |
| `prometheus_directories` | Directories for Prometheus | Directories that need to be created for Prometheus. |

## Dependencies

None.

## Example Playbook

Here is an example playbook that uses this role:

```yaml
- hosts: monitoring-server
  roles:
    - prometheus
