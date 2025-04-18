.PHONY: build run

build:
	sudo docker build -t dotfile-testing .

run:
	$(MAKE) build
	sudo docker run -it dotfile-testing
