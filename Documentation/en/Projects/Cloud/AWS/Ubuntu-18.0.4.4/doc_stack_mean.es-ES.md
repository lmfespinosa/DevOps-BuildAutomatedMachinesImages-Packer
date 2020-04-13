# Imagen Ubuntu con stack MEAN

## Introducción

Jitsi Meet es una plataforma de videoconferencia, VoIP y mensajería que podemos usar para hablar en grupos y establecer grupos de trabajo, y lo mejor de todo,... ¡¡¡es libre!!!!

## Página oficial

La página oficial es:

https://jitsi.org/jitsi-meet/

## Script

La ruta del script del repositorio es:

Ubuntu\ubuntu-18.04.4-server-amd64-VirtualBox\MeetingApps\Jitsi-meet

## Pasos de ejecución

Antes de la ejecución del scrit, deberemos de sustituir dentro del propio script los siguientes parámetros:

* Vagrantfile
    - virtualbox.vm.hostname = "virtualbox-ubuntu1804"
    - ip: "172.16.3.2"

* scripts/jitsi_installation.sh
    - la cadena "ejemplo.es" por el dominio deseado.



Una vez actualizado el script, efectuamos los siguientes pasos:

1. Validamos el estado del script con Packer

```
packer validate ubuntu_jitsi.json
```
![logo](https://raw.githubusercontent.com/lmfespinosa/DevOps-Provisioning-Terraform/master/Documentation/images/Projects/StatusCake/StatusCake_0.png)

2. Iniciamos la creación de la imagen mediante el comando:
```
packer build ubuntu_jitsi.json
```
![logo](https://raw.githubusercontent.com/lmfespinosa/DevOps-Provisioning-Terraform/master/Documentation/images/Projects/StatusCake/StatusCake_1.png) 
