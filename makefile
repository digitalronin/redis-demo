TAG := redis-pinger

.built: Dockerfile
	docker build -t $(TAG) .
	touch .built

build: .built
