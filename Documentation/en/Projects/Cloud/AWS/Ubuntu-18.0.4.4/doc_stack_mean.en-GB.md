# Ubuntu Imagen with MEAN Stack in AWS

## Introduction

The basic operation of the script is to build a custom image with Nginx and Node, publishing an example website on port 80.

## Script

You can find the script at:

/AWS/Script_Packer_MEAN_AWS/

The necessary files have the following structure:
 
*  Files:
    * Static/webnode:
        * Example.js -> Pexample Web page in nodejs.
    * Templates/nginx:
        * Nginx.conf -> Have the configuration of nginx service.
* Scrips:
    * Aws_node.sh -> installation script of node, npm y build-essential
    * Aws_upload_node_app.sh -> configuration script for web page & configuration of nginx service.
    * Nginx.sh -> installation script for nginx.
* Aws_mean.json -> json file of Packer for the step of execution of image.

As previously discussed, the global script is made up of a series of files, bash scripts and a json file, in which the script is launched.

The aws_mean.json file has the following parts and steps (in the order shown):

* Variables: We define the variables that will be used in the script.
* Builders: Construction of the machine in AWS with the desired specifications.
* Provisioners: Part of the scriot that is executed to provision the pertinent actions once the building process has finished.

As mentioned, the scrip follows a series of guidelines. The following is the provisioning steps that are carried out once the builder is finished:

1. Create folder for files
2. Create folder for web
3. Upload web file
4. Upload nginx configuration file
5. Run node installation script
6. Run nginx install script
7. Run web environment setup script


## Execution Steps

Before the scrit execution, ypu have to replace the next parameters into the script:

* aws_mean.json
    - "aws_access_key": "",
    - "aws_secret_key": "",
    - "region": "eu-west-1"


Once the script has been updated, we carry out the following steps:

1. Check the script status with Packer:

```
packer validate aws_mean.json
```


2. Start the image building with the command:
```
packer build aws_mean.json
```
) 