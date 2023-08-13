# Logstash Ansible Role

This Ansible role is responsible for installing and configuring Logstash, a server-side data processing pipeline that ingests, transforms, and sends data to the specified locations.

## Role Variables

| Variable Name             | Default Value                                         | Description                                              |
|---------------------------|-------------------------------------------------------|----------------------------------------------------------|
| `logstash_repo_baseurl`   | `https://artifacts.elastic.co/packages/7.x/yum`      | Base URL for the Logstash repository.                    |
| `logstash_repo_gpgkey`    | `https://artifacts.elastic.co/GPG-KEY-elasticsearch` | GPG key URL for the Logstash repository.                 |
| `logstash_package_name`   | `logstash`                                           | Name of the Logstash package to be installed.            |
| `logstash_package_state`  | `latest`                                             | State of the Logstash package (e.g. latest, absent).     |
| `logstash_config_files`   | See defaults                                          | List of configuration files to be managed for Logstash.  |

## Handlers

| Name                | Description                                                                   |
|---------------------|-------------------------------------------------------------------------------|
| `reload kibana`     | Restarts the Logstash service. Triggered when there are configuration changes to Logstash.  |

## Example Playbook

```yaml
- hosts: your_host
  roles:
    - logstash