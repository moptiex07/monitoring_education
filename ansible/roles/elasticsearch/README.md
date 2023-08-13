# Elasticsearch Ansible Role

This Ansible role is tailored for the installation, configuration, and management of Elasticsearch. Elasticsearch is a distributed, RESTful search and analytics engine capable of addressing a wide range of use cases.

## Role Variables

| Variable Name              | Default Value                                          | Description                                                                             |
|----------------------------|--------------------------------------------------------|-----------------------------------------------------------------------------------------|
| `elastic_gpg_key_url`      | `https://artifacts.elastic.co/GPG-KEY-elasticsearch`   | URL to the GPG key for Elasticsearch.                                                   |
| `elastic_repo_baseurl`     | `https://artifacts.elastic.co/packages/7.x/yum`        | Base URL for the Elasticsearch YUM repository.                                          |
| `elastic_package_name`     | `elasticsearch`                                        | The package name for Elasticsearch.                                                     |

## Handlers

| Name               | Description                                             |
|--------------------|---------------------------------------------------------|
| (No handlers used) |                                                         |

## Example Playbook

```yaml
- hosts: your_host
  roles:
    - elasticsearch
