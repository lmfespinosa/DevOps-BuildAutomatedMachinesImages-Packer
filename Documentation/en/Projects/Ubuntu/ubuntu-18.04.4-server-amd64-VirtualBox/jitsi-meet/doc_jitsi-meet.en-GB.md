# Jitsi Meet

## Introduction

Jitsi Meet is a video conferencing, VoIP and messaging platform that we can use to talk in groups and establish work groups, and the best of all, ... it's free !!!!

## official Web Page

The official web page is:

https://jitsi.org/jitsi-meet/

## Script

You can find the script at:

Ubuntu\ubuntu-18.04.4-server-amd64-VirtualBox\MeetingApps\Jitsi-meet

## Execution Steps

Before the scrit execution, ypu have to replace the next parameters into the script:

* Vagrantfile
    - virtualbox.vm.hostname = "virtualbox-ubuntu1804"
    - ip: "172.16.3.2"

* scripts/jitsi_installation.sh
    - the "ejemplo.es" string can be replace for your domain.


Once the script has been updated, we carry out the following steps:

1. Check the script status with Packer:

```
packer validate ubuntu_jitsi.json
```
![logo](https://raw.githubusercontent.com/lmfespinosa/DevOps-BuildAutomatedMachinesImages-Packer/master/Documentation/images/Projects/jitsi-meet/jitsi-meet_0.png)

2. Start the image building with the command:
```
packer build ubuntu_jitsi.json
```
![logo](https://raw.githubusercontent.com/lmfespinosa/DevOps-BuildAutomatedMachinesImages-Packer/master/Documentation/images/Projects/jitsi-meet/jitsi-meet_1.png)

We can see all the progress in VirtualBox:

![logo](https://raw.githubusercontent.com/lmfespinosa/DevOps-BuildAutomatedMachinesImages-Packer/master/Documentation/images/Projects/jitsi-meet/jitsi-meet_2.png)

When the process is finished, the machine it will be destroy:

![logo](https://raw.githubusercontent.com/lmfespinosa/DevOps-BuildAutomatedMachinesImages-Packer/master/Documentation/images/Projects/jitsi-meet/jitsi-meet_3.png) 

The result is in the folder "output-virtualbox-iso".