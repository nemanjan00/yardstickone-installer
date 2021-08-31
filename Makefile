all: docker
	docker run --rm -ti --privileged -v /dev:/dev yardstickone-installer /tmp/build.sh

docker:
	docker build . --tag yardstickone-installer
