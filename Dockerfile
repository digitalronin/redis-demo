FROM redis

COPY redis-pinger.sh .

CMD "./redis-pinger.sh"
