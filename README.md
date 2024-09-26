# static-jinja-plus-port

## Build
```shell
.\build_tag.sh <docker_file_name> <tag> <hash>
```
- hash
    ```shell
    curl -sL https://github.com/MrDave/StaticJinjaPlus/archive/refs/tags/0.1.0.tar.gz | sha256sum
    ```

#### Example
```shell
.\build_tag.sh ubuntu 0.1.0 3555bcfd670e134e8360ad934cb5bad1bbe2a7dad24ba7cafa0a3bb8b23c6444
```
