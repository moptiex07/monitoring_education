# Ansible Role: Docker

An Ansible Role that installs Docker on Linux servers.

## Requirements

- A supported Linux distribution (e.g., CentOS, Ubuntu).
- Ansible 2.4 or higher (though newer versions are always recommended).

## Role Variables

(На данный момент переменные отсутствуют, но вы можете добавить сюда описание переменных, когда добавите их в роль.)

## Dependencies

None.

## Example Playbook

Using the role is very straightforward:

```yaml
- hosts: servers
  roles:
    - docker
