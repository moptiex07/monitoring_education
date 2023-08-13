## Logstash Ansible Role

Эта роль предназначена для установки и настройки Logstash.

### Role Variables

- `logstash_repo_baseurl`: Базовый URL для YUM репозитория Logstash.  
  По умолчанию: `https://artifacts.elastic.co/packages/7.x/yum`

- `logstash_repo_gpgkey`: URL GPG ключа для репозитория Logstash.  
  По умолчанию: `https://artifacts.elastic.co/GPG-KEY-elasticsearch`

- `logstash_package_name`: Имя пакета Logstash для установки.  
  По умолчанию: `logstash`

- `logstash_package_state`: Состояние пакета Logstash (например, `latest`, `present`, и т.д.).  
  По умолчанию: `latest`

- `logstash_config_files`: Список файлов конфигурации Logstash для развертывания. По умолчанию, содержит два файла конфигурации: `logstash.conf.j2` и `logstash-app01.conf.j2`, развертываемых в каталог `/etc/logstash/conf.d/`.
