## Grafana Ansible Role

Эта роль предназначена для установки и настройки Grafana.

### Role Variables

- `grafana_repo_name`: Имя репозитория Grafana для YUM.  
  По умолчанию: `grafana`

- `grafana_repo_description`: Описание репозитория Grafana.  
  По умолчанию: `Grafana YUM repository`

- `grafana_repo_baseurl`: URL репозитория Grafana.  
  По умолчанию: `https://packages.grafana.com/oss/rpm`

- `grafana_repo_gpgcheck`: Проверять или нет GPG ключ репозитория.  
  По умолчанию: `yes`

- `grafana_repo_gpgkey`: URL для GPG ключа репозитория Grafana.  
  По умолчанию: `https://packages.grafana.com/gpg.key`

- `grafana_package_name`: Имя пакета Grafana.  
  По умолчанию: `grafana`

- `grafana_package_state`: Состояние пакета Grafana (например, latest, present, absent и др.).  
  По умолчанию: `latest`

### Files
`files/`: Эта директория содержит дефолтный json для дашбордов Grafana.
