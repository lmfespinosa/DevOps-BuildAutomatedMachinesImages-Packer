# Linux Install

## Packer Installation steps

1. Clone the Packer repository from GitHub :
    ```
    $ mkdir -p $(go env GOPATH)/src/github.com/hashicorp && cd $_
    $ git clone https://github.com/hashicorp/packer.git
    $ cd packer
    ```
2. Build Packer for your system in ./bin/:
    ```
    $ make dev
    ```
