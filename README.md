# Telsir_infra

# HW 4 - Основные сервисы Google Cloud Platform ( [URL](https://otus.ru/media/72/0b/%D0%94%D0%BE%D0%BC%D0%B0%D1%88%D0%BD%D0%B5%D0%B5_%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5._%D0%9E%D1%81%D0%BD%D0%BE%D0%B2%D0%BD%D1%8B%D0%B5_%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D1%8B_Google_Cloud_Platform__GCP-22859-720bf9.pdf) )

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