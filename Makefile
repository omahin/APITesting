# Makefile para construir imagem Docker e executar testes com Newman

# Variáveis
DOCKER_IMAGE_NAME = postman-newman-tests:latest
DOCKER_CONTAINER_NAME = sad_hellman

# Comandos
build:
	docker build -t $(DOCKER_IMAGE_NAME) .

run:
	docker run --rm --name $(DOCKER_CONTAINER_NAME) $(DOCKER_IMAGE_NAME)

test: build run

clean:
	docker stop $(DOCKER_CONTAINER_NAME)
	docker rm $(DOCKER_CONTAINER_NAME)
