# Ansible Role: Elasticsearch

An Ansible Role that installs Elasticsearch on RPM-based Linux distributions.

## Requirements

- RPM-based Linux distribution (e.g., CentOS, RHEL).
- Ansible 2.4 or higher.

## Role Variables

Currently, no variables are defined for this role. Future configurations or settings can be added as defaults.

## Dependencies

None.

## Example Playbook

```yaml
- hosts: elasticsearch_servers
  roles:
    - elasticsearch
