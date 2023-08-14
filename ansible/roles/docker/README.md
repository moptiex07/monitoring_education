# Docker Ansible Role

This Ansible role is designed for the installation and configuration of Docker. Docker is a platform used to develop, ship, and run applications inside containers.

## Role Variables

| Variable Name         | Default Value  | Description                                            |
|-----------------------|----------------|--------------------------------------------------------|
| `elastic_package_name`| `docker`       | The package name for Docker.                           |

## Handlers

| Name               | Description                                             |
|--------------------|---------------------------------------------------------|
| (No handlers used) |                                                         |

## Example Playbook

```yaml
- hosts: your_host
  roles:
    - docker
