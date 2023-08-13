## Java Ansible Role

Эта роль предназначена для установки Java, Gradle и запуска Java-приложения.

### Role Variables

- `java_package_name`: Имя пакета для установки Java.  
  По умолчанию: `java-17-amazon-corretto`

- `java_package_state`: Состояние пакета Java.  
  По умолчанию: `present`

- `gradle_version`: Версия Gradle для установки.  
  По умолчанию: `7.2`

- `gradle_download_url`: URL сборки Gradle.  
  По умолчанию: `https://services.gradle.org/distributions/gradle-7.2-bin.zip`

- `gradle_install_dir`: Директория установки Gradle.  
  По умолчанию: `/opt/gradle`

- `java_app_src`: Исходный путь к Java-приложению на локальной машине.  
  По умолчанию: `/Users/maksimyarhunin/monitoring_education/java-spring-pets`

- `java_app_dest`: Путь назначения на удаленном сервере для Java-приложения.  
  По умолчанию: `/home/ec2-user/java-spring-pets`

- `java_app_owner`: Владелец директории Java-приложения на удаленном сервере.  
  По умолчанию: `ec2-user`

- `java_app_group`: Группа директории Java-приложения на удаленном сервере.  
  По умолчанию: `ec2-user`

- `java_app_mode`: Права
