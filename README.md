# Telsir_infra

# HW 10 - Ansible: работа с ролями и окружениями

Добавлены роли и окружения, реализована работа с волтом и добавлен FW rule для vpc модуля терраформа.


# HW 9 - Деплой и управление конфигурацией с Ansible

Теперь output Терраформа возвращает внутренний и внешний IP базы данных. 

Написан основной плейбук и дополнительный. 

Второй плейбук разбит на три плейбука: `db.yml, app.yml, deploy.yml`

Переработаны провижионеры для пакера, написаны плейбуки для пакера.

Билдим новые образы для Packer (с новыми именами) из корня репозитория `packer build -var-file=./packer/variables.json ./packer/app.json` и `packer build -var-file=./packer/variables.json ./packer/db.json`

В Терраформ указываем новые имена образов для создания VM

# HW 8 - Управление конфигурацией. Основные DevOps инструменты. Знакомство с Ansible.

Реализовано два типа инвентори: старого образца inventory (ansible<=2.4) и .yml инвентори нового образца (ansible >= 2.4)

После выполнения команды `ansible app -m command -a 'rm -rf ~/reddit' ` произошла очистка каталога на удаленном сервере, в связи с чем повторное выполнение плейбука `ansible-playbook clone.yml` производит изменения на удаленном сервере.
 

# HW 7 - Принципы организации инфраструктурного кода и работа над инфраструктурой в команде на примере Terraform

Реализована основная часть домашнего задания.

Что бы запустить проект, необходимо использовать `terraform apply -auto-approve=true`


# HW 6 - Практика Infrastructure as a Code (IaC)

Installing terraform at Ubuntu 18.04

    1. Install unzip

    sudo apt-get install unzip
    
    2. Download latest version of the terraform

    wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip
    
    3. Extract the downloaded file archive

    unzip terraform_0.11.11_linux_amd64.zip
    
    4. Move the executable into a directory searched for executables

    sudo mv terraform /usr/local/bin/
    
    5. Run it

    terraform --version 

Что бы запустить проект, необходимо использовать `terraform apply -auto-approve=true`

# HW5 - Модели управления инфраструктурой.

Реализован build через Packer, произведена параметризация объектов в .json файле. Создан отдельный файл variables.json.example.

`packer build -var-file=variables.json ubuntu16.json`


# HW 4 - Основные сервисы Google Cloud Platform 

testapp_IP = 35.246.23.91
testapp_port = 9292


# Знакомство с облачной инфраструктурой
Задание первое: 

         man ssh:
         
         -J [user@]host[:port]
             Connect to the target host by first making a ssh connection to the jump host and then
             establishing a TCP forwarding to the ultimate destination from there.  Multiple jump
             hops may be specified separated by comma characters.  This is a shortcut to specify a
             ProxyJump configuration directive.


      ssh -i ~/.ssh/appuser -J appuser@34.65.168.247  appuser@10.128.0.2
      
      
Где `34.65.168.247  - внешний IP bastion host` \
Где `10.128.0.2 - внутренний адрес someinternalhost`       

bastion_IP = 34.65.168.247 
someinternalhost_IP = 10.128.0.2
