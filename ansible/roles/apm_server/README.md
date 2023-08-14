# APM Server Ansible Role

This Ansible role is used for the installation and configuration of the APM Server. APM Server is a part of the Elastic Stack and is designed to receive data from APM agents and transform it into Elasticsearch documents.

## Role Variables

| Variable Name               | Default Value                                                 | Description                                  |
|-----------------------------|---------------------------------------------------------------|----------------------------------------------|
| `elastic_gpg_key_url`       | `https://packages.elastic.co/GPG-KEY-elasticsearch`           | The GPG key URL for the Elastic repositories.|
| `elastic_repo_name`         | `elastic-8.x`                                                 | The Elastic repository name.                 |
| `elastic_repo_description`  | `Elastic repository for 8.x packages`                         | Description for the Elastic repository.      |
| `elastic_repo_baseurl`      | `https://artifacts.elastic.co/packages/8.x/yum`               | Base URL for the Elastic repository.         |
| `apm_server_package_name`   | `apm-server`                                                  | The package name for APM Server.             |
| `apm_server_config_template`| `apm-server.yml.j2`                                           | Template file for the APM Server configuration.|
| `apm_server_config_dest`    | `/etc/apm-server/apm-server.yml`                              | Destination path for the APM Server configuration file. |

## Handlers

| Name               | Description                                             |
|--------------------|---------------------------------------------------------|
| (No handlers used) |                                                         |

## Example Playbook

```yaml
- hosts: your_host
  roles:
    - apm_server
