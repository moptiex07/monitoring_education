### Node Exporter Ansible Role

Данная роль предназначена для установки и запуска `node_exporter` для Prometheus на серверах на базе CentOS/RHEL.

#### Requirements

- Система на базе CentOS/RHEL.
- Права суперпользователя для установки и настройки сервисов.

#### Role Variables

Переменные, доступные для настройки:

- `node_exporter_version`: Версия Node Exporter, которую вы хотите установить. По умолчанию: `1.1.2`.
- `node_exporter_download_url`: URL для загрузки архива Node Exporter. По умолчанию основан на `node_exporter_version`.
- `node_exporter_tmp_archive`: Путь к временному архиву, который будет использован при загрузке. По умолчанию: `"/tmp/node_exporter.tar.gz"`.
- `node_exporter_bin_path`: Путь для установки исполняемого файла `node_exporter`. По умолчанию: `"/usr/local/bin/node_exporter"`.
- `node_exporter_service_file`: Путь к файлу systemd сервиса для `node_exporter`. По умолчанию: `"/etc/systemd/system/{{ node_exporter_service_name }}.service"`.
- `node_exporter_service_name`: Имя сервиса, используемое systemd. По умолчанию: `"node_exporter"`.

#### Dependencies

None.

#### Example Playbook

Пример использования роли:

```yaml
- hosts: all
  roles:
     - { role: node_exporter }
