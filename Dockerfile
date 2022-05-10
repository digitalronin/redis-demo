FROM redis

RUN apt-get update && apt-get install -y python

COPY redis-pinger.sh .

CMD "./redis-pinger.sh"
