# Java Ansible Role

This Ansible role installs Java and Gradle, and then deploys a Java application.

## Role Variables

| Variable Name               | Default Value                                                                                          | Description                                               |
|-----------------------------|-------------------------------------------------------------------------------------------------------|-----------------------------------------------------------|
| `java_package_name`         | `java-17-amazon-corretto`                                                                             | Name of the Java package to be installed.                 |
| `java_package_state`        | `present`                                                                                             | State of the Java package (e.g., present, absent).        |
| `gradle_version`            | `7.2`                                                                                                 | Version of Gradle to be installed.                        |
| `gradle_download_url`       | `https://services.gradle.org/distributions/gradle-{{ gradle_version }}-bin.zip`                       | URL from which Gradle will be downloaded.                 |
| `gradle_install_dir`        | `/opt/gradle`                                                                                         | Directory where Gradle will be installed.                 |
| `gradle_path`               | `{{ gradle_install_dir }}/gradle-{{ gradle_version }}/bin`                                           | Path to the Gradle binary.                                |
| `java_app_src`              | `/Users/maksimyarhunin/monitoring_education/java-spring-pets`                                         | Source path of the Java application.                      |
| `java_app_dest`             | `/home/ec2-user/java-spring-pets`                                                                     | Destination path for the Java application.                |
| `java_app_owner`            | `ec2-user`                                                                                            | Owner of the Java application files.                      |
| `java_app_group`            | `ec2-user`                                                                                            | Group of the Java application files.                      |
| `java_app_mode`             | `'0755'`                                                                                              | File mode for the Java application.                       |

## Handlers

| Name                  | Description                                                                                     |
|-----------------------|-------------------------------------------------------------------------------------------------|
| -                     | No handlers specified for this role.                                                             |

## Example Playbook

```yaml
- hosts: your_host
  roles:
    - java
