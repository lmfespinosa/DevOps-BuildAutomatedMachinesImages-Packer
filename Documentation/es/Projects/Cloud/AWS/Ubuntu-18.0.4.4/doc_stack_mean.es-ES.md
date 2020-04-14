# Imagen Ubuntu con stack MEAN

## Introducción

El funcionamiento básico del script consiste en construir una imagen personalizada con Nginx y Node, publicando una web de ejemplo en el puerto 80.

## Script

La ruta del script del repositorio es:

/AWS/Script_Packer_MEAN_AWS/

Los ficheros necesarios tienen la siguiente estructura:
 
*  Files:
    * Static/webnode:
        * Example.js -> Página web de ejemplo en nodejs.
    * Templates/nginx:
        * Nginx.conf -> Contiene la configuración deseada de nginx
* Scrips:
    * Aws_node.sh -> script de instalación de node, npm y build-essential
    * Aws_upload_node_app.sh -> script de preparación de la web y configuración de nginx.
    * Nginx.sh -> script de instalación de nginx.
* Aws_mean.json -> json de Packer que contiene las instrucciones de generación de la imagen.

Como se ha comentado anteriormente, el script global está compuesto por una serie de ficheros, scripts bash y un fichero json, en el que se lanza la secuencia de comandos.

El fichero aws_mean.json, dispone de las siguientes partes y pasos (en el orden expuesto):

* Variables: Definimos las variables que serán usadas en el script.
* Builders: Construcción de la maquina en AWS con las especificaicones deseadas.
* Provisioners: Parte del scriot que se ejecuta para provisionar las acciones pertinentes una vez finalizado el proceso de building.

Como se ha comentado, el scrip sigue una serie de pautas. A continuación, se expone los pasos de provisionamiento que se efectúa una vez finalizado el builder:

1.	Crear folder para ficheros
2.	Crear folder para web
3.	Subir fichero web
4.	Subir fichero configuración nginx
5.	Ejecutar script instalación node
6.	Ejecutar script instalación nginx
7.	Ejecutar script preparación entorno web


## Pasos de ejecución

Antes de la ejecución del scrit, deberemos de sustituir dentro del propio script los siguientes parámetros:

* aws_mean.json
    - "aws_access_key": "",
    - "aws_secret_key": "",
    - "region": "eu-west-1"


Una vez actualizado el script, efectuamos los siguientes pasos:

1. Validamos el estado del script con Packer

```
packer validate aws_mean.json
```


2. Iniciamos la creación de la imagen mediante el comando:
```
packer build aws_mean.json
```
) 
