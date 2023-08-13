# Ansible Role: Nginx

Ansible роль для установки и настройки Nginx.

## Требования

Отсутствуют.

## Ролевые переменные

- `nginx_package_name`: Имя пакета Nginx для установки. По умолчанию `nginx`.
- `nginx_service_name`: Имя сервиса Nginx. По умолчанию `nginx`.
- `nginx_conf_template`: Шаблон конфигурационного файла Nginx. По умолчанию `nginx.conf.j2`.
- `nginx_conf_dest`: Путь назначения для конфигурационного файла Nginx. По умолчанию `/etc/nginx/nginx.conf`.

## Обработчики

- `reload nginx`: Перезагрузка Nginx при изменении конфигурации.

## Пример playbook

```yaml
- hosts: web_servers
  roles:
    - { role: nginx }
