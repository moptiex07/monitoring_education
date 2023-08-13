## filebeat Ansible Role

Эта роль предназначена для установки и настройки Filebeat.

### Role Variables

- `elastic_gpg_key_url`: URL GPG-ключа для репозитория Elasticsearch.  
  По умолчанию: `https://artifacts.elastic.co/GPG-KEY-elasticsearch`

- `elastic_repo_name`: Имя репозитория Elastic для YUM.  
  По умолчанию: `elastic-7.x`

- `elastic_repo_description`: Описание репозитория Elastic.  
  По умолчанию: `Elastic repository for 7.x packages`

- `elastic_repo_baseurl`: URL репозитория Elastic для YUM.  
  По умолчанию: `https://artifacts.elastic.co/packages/7.x/yum`

- `filebeat_package_name`: Имя пакета Filebeat.  
  По умолчанию: `filebeat`

- `filebeat_config_template`: Исходный шаблон конфигурации Filebeat.  
  По умолчанию: `filebeat.conf.j2`

- `filebeat_config_dest`: Путь назначения для конфигурационного файла Filebeat.  
  По умолчанию: `/etc/filebeat/filebeat.yml`

### Handlers

- `reload filebeat`: Перезагружает Filebeat после изменения конфигурации.
