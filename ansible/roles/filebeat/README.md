# Filebeat Ansible Role

This Ansible role sets up Filebeat for log shipping to Elasticsearch or Logstash.

## Role Variables

| Variable Name              | Default Value                                              | Description                                              |
|----------------------------|------------------------------------------------------------|----------------------------------------------------------|
| `elastic_gpg_key_url`      | `https://artifacts.elastic.co/GPG-KEY-elasticsearch`       | URL of the Elastic public signing key.                   |
| `elastic_repo_name`        | `elastic-7.x`                                              | Name of the YUM repository.                              |
| `elastic_repo_description` | `Elastic repository for 7.x packages`                      | Description of the YUM repository.                       |
| `elastic_repo_baseurl`     | `https://artifacts.elastic.co/packages/7.x/yum`            | YUM repository URL for Elastic products.                 |
| `filebeat_package_name`    | `filebeat`                                                 | Name of the Filebeat package to install.                 |
| `filebeat_config_template` | `filebeat.conf.j2`                                         | Source template for Filebeat configuration.              |
| `filebeat_config_dest`     | `/etc/filebeat/filebeat.yml`                               | Destination path for Filebeat configuration.             |

## Handlers

| Name            | Description                               |
|-----------------|-------------------------------------------|
| `reload filebeat`| Reloads the Filebeat service after a configuration change. |

## Example Playbook

```yaml
- hosts: your_host
  roles:
    - filebeat
