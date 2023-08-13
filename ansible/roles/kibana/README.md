# Kibana Ansible Role

This Ansible role installs and configures Kibana, a visualization and management interface for the Elastic Stack.

## Role Variables

| Variable Name             | Default Value                                           | Description                                                |
|---------------------------|---------------------------------------------------------|------------------------------------------------------------|
| `kibana_repo_baseurl`     | `https://artifacts.elastic.co/packages/7.x/yum`         | Base URL for the Kibana repository.                        |
| `kibana_repo_gpgkey`      | `https://artifacts.elastic.co/GPG-KEY-elasticsearch`    | URL for the GPG key of the Kibana repository.              |
| `kibana_package_name`     | `kibana`                                                | Name of the Kibana package.                                |
| `kibana_package_state`    | `latest`                                                | Desired state of the Kibana package (e.g., present, latest).|
| `kibana_config_path`      | `/etc/kibana/kibana.yml`                                | Path to the Kibana configuration file.                      |
| `kibana_host`             | `0.0.0.0`                                               | IP Address for Kibana to bind to.                           |

## Handlers

| Name                | Description                                                                   |
|---------------------|-------------------------------------------------------------------------------|
| `reload kibana`     | Reloads the Kibana service when there are changes to its configuration file.  |

## Example Playbook

```yaml
- hosts: your_host
  roles:
    - kibana
