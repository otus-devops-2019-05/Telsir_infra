# Telsir_infra

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
