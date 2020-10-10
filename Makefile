
.PHONY: release, prod, dev, serve, docker, push, release_docker

release:
	ng build --prod --outputPath=dist

release_docker: release docker docker_push

prod:
	ng build --outputPath=dist

docker:
	docker build -t gardenova/gardenova.hu:latest .

push:
	docker push gardenova/gardenova.hu:latest

dev:
	ng serve --port 4400

serve: dev