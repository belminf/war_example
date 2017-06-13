include Env

.PHONY: all build

all: build build-docker

build:
	mvn package -f $(NAME)

build-docker:
	docker build -t $(NAME):$(VERSION) --build-arg NAME=$(NAME) --build-arg WAR_NAME=$(WAR_NAME) .

clean:
	rm -rf $(NAME)/target
