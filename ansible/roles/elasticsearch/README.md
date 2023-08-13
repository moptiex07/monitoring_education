# Ansible Role: Elasticsearch

An Ansible Role that installs Elasticsearch on RPM-based Linux distributions.

## Requirements

- RPM-based Linux distribution (e.g., CentOS, RHEL).
- Ansible 2.4 or higher.

## Role Variables


- `elastic_gpg_key_url`: URL to the GPG key used for the Elasticsearch RPMs.
    - Default: `https://artifacts.elastic.co/GPG-KEY-elasticsearch`
- `elastic_repo_baseurl`: Base URL for the Elasticsearch YUM repository.
    - Default: `https://artifacts.elastic.co/packages/7.x/yum`
- `elastic_package_name`: Name of the Elasticsearch package.
    - Default: `elasticsearch`

## Dependencies

None.

## Example Playbook

```yaml
- hosts: elasticsearch_servers
  roles:
    - elasticsearch
