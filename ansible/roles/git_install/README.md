# Git Ansible Role

This Ansible role installs the latest version of Git using the YUM package manager.

## Role Variables

| Variable Name | Default Value | Description                      |
|---------------|---------------|----------------------------------|
| `name`        | git           | The name of the package to install.|
| `state`       | latest        | Desired state of the package.    |

## Handlers

- No handlers defined for this role.

## Example Playbook

```yaml
- hosts: your_host
  roles:
    - git
