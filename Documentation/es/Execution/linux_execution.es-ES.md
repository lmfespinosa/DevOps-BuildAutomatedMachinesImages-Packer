# Ejecución en Linux

## Pasos de instalación de Packer

1. Clonar el repositorio de packer:
    ```
    $ mkdir -p $(go env GOPATH)/src/github.com/hashicorp && cd $_
    $ git clone https://github.com/hashicorp/packer.git
    $ cd packer
    ```
2. Compilar packer y poner el fichero binario en la ruta ./bin/:
    ```
    $ make dev
    ```
