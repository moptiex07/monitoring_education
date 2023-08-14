Краткое описание - проект сделан на AWS. Каждый раз аккаунт удаляется, поэтому проект конфигурируется каждый раз заново. 




Что нужно сделать чтобы запустить проект:
0. aws configure in cli
1. Download ssh key-pair in /Users/maksimyarhunin/Downloads
2. run ./ssh.sh
3. terraform apply
4. Run ./add_ip_to_inventory.sh
5. ansible-playbook playbook.yml

* curl -X GET "http://localhost:9200/_cat/indices?v"

