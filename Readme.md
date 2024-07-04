# Postman Newman Docker

Este repositório contém uma configuração Docker para executar testes de coleções Postman usando Newman.

## Como usar

### Construir a imagem Docker

```bash
docker build -t postman-newman-tests .

docker run --rm -v ${pwd}:/usr/src/app postman-newman-tests

### Os resultados dos testes serão salvos em results.json no diretório atual.