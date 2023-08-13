# Nginx Ansible Role

This Ansible role is responsible for installing and configuring Nginx, a popular open-source web server and reverse proxy.

## Role Variables

| Variable Name           | Default Value           | Description                                           |
|-------------------------|-------------------------|-------------------------------------------------------|
| `nginx_package_name`    | `nginx`                 | Name of the Nginx package to be installed.            |
| `nginx_service_name`    | `nginx`                 | The service name for the Nginx instance.              |
| `nginx_conf_template`   | `nginx.conf.j2`         | Path to the template for the Nginx configuration.     |
| `nginx_conf_dest`       | `/etc/nginx/nginx.conf` | Destination path for the Nginx configuration.         |

## Handlers

| Name           | Description                                                                            |
|----------------|----------------------------------------------------------------------------------------|
| `reload nginx` | Reloads the Nginx service. Triggered when there are configuration changes to Nginx.    |

## Example Playbook

```yaml
- hosts: your_host
  roles:
    - nginx
