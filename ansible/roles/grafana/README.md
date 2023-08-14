# Grafana Ansible Role

This Ansible role facilitates the installation, configuration, and management of Grafana. Grafana is an open-source platform used for monitoring and observability.

## Role Variables

| Variable Name             | Default Value                          | Description                                                                                     |
|---------------------------|----------------------------------------|-------------------------------------------------------------------------------------------------|
| `grafana_repo_name`       | `grafana`                              | Name of the Grafana YUM repository.                                                             |
| `grafana_repo_description`| `Grafana YUM repository`               | Description of the Grafana YUM repository.                                                      |
| `grafana_repo_baseurl`    | `https://packages.grafana.com/oss/rpm` | Base URL for the Grafana YUM repository.                                                        |
| `grafana_repo_gpgcheck`   | `yes`                                  | Whether GPG signature checking is enabled for the repository.                                   |
| `grafana_repo_gpgkey`     | `https://packages.grafana.com/gpg.key` | URL to the GPG key for the Grafana YUM repository.                                              |
| `grafana_package_name`    | `grafana`                              | The package name for Grafana.                                                                   |
| `grafana_package_state`   | `latest`                               | Desired state of the Grafana package. Can be "latest", "present", etc.                           |

## Handlers

| Name               | Description                                             |
|--------------------|---------------------------------------------------------|
| (No handlers used) |                                                         |

## Example Playbook

```yaml
- hosts: your_host
  roles:
    - grafana
