# Telsir_infra

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
