# Ansible Role: Docker

An Ansible Role that installs Docker on Linux servers.

## Requirements

- A supported Linux distribution (e.g., CentOS, Ubuntu).
- Ansible 2.4 or higher (though newer versions are always recommended).

## Role Variables

- `elastic_package_name`: Name of the docker package.
  - Default: `docker` 

## Dependencies

None.

## Example Playbook

Using the role is very straightforward:

```yaml
- hosts: servers
  roles:
    - docker
