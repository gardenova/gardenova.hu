
.PHONY: release, build, dev, serve

release:
	ng build --prod --outputPath=dist

build:
	ng build --outputPath=dist
	docker build -t gardenova/gardenova.hu:latest .

dev:
	ng serve

serve: dev