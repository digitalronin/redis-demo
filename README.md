# Redis demo

Basic redis usage

## Start a server

```
docker network create -d bridge redis-net
docker run --rm --network redis-net --name redis-server redis
```

## Start a client

```
docker run --rm --network redis-net --name redis-client -it redis redis-cli -u redis://redis-server

redis-server:6379> ping
PONG
redis-server:6379> set name david
OK
redis-server:6379> get name
"david"
```

## Run a pinger

```
docker build -t redis-pinger .
docker run --rm --name redis-pinger --network redis-net -e REDIS_URL=redis://redis-server -it redis-pinger
```

## Cleanup

```
docker network rm redis-net
```
