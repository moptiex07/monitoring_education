## Kibana Ansible Role

Эта роль предназначена для установки и настройки Kibana.

### Role Variables

- `kibana_repo_baseurl`: Базовый URL для YUM репозитория Kibana.  
  По умолчанию: `https://artifacts.elastic.co/packages/7.x/yum`

- `kibana_repo_gpgkey`: URL GPG ключа для репозитория Kibana.  
  По умолчанию: `https://artifacts.elastic.co/GPG-KEY-elasticsearch`

- `kibana_package_name`: Имя пакета Kibana для установки.  
  По умолчанию: `kibana`

- `kibana_package_state`: Состояние пакета Kibana (например, `latest`, `present`, и т.д.).  
  По умолчанию: `latest`

- `kibana_config_path`: Путь к файлу конфигурации Kibana.  
  По умолчанию: `/etc/kibana/kibana.yml`

- `kibana_host`: Адрес, на котором Kibana будет прослушивать входящие соединения.  
  По умолчанию: `0.0.0.0`
