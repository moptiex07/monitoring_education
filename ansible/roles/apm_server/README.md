## apm-server Ansible Role

Эта роль предназначена для установки и настройки Elastic APM Server.

### Role Variables

- `elastic_gpg_key_url`: URL GPG-ключа для репозитория Elasticsearch.  
  По умолчанию: `https://packages.elastic.co/GPG-KEY-elasticsearch`

- `elastic_repo_name`: Имя репозитория Elastic для YUM.  
  По умолчанию: `elastic-8.x`

- `elastic_repo_description`: Описание репозитория Elastic.  
  По умолчанию: `Elastic repository for 8.x packages`

- `elastic_repo_baseurl`: URL репозитория Elastic для YUM.  
  По умолчанию: `https://artifacts.elastic.co/packages/8.x/yum`

- `apm_server_package_name`: Имя пакета APM Server.  
  По умолчанию: `apm-server`

- `apm_server_config_template`: Исходный шаблон конфигурации APM Server.  
  По умолчанию: `apm-server.yml.j2`

- `apm_server_config_dest`: Путь назначения для конфигурационного файла APM Server.  
  По умолчанию: `/etc/apm-server/apm-server.yml`

### Handlers

- `restart apm-server`: Перезапускает сервис APM Server после изменения конфигурации.
