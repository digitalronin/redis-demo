#!/bin/sh

while true; do
  redis-cli -u $REDIS_URL set tstamp "$(date)"
  sleep 2
  redis-cli -u $REDIS_URL get tstamp
  sleep 2
done
