
.PHONY: release, build, dev, serve, docker, docker_push, release_docker

release:
	ng build --prod --outputPath=dist

release_docker: release docker docker_push

build:
	ng build --outputPath=dist

docker:
	docker build -t gardenova/gardenova.hu:latest .

docker_push:
	docker push gardenova/gardenova.hu:latest

dev:
	ng serve

serve: dev