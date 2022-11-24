docker volume create redis-data
docker run -d -h redis -e REDIS_PASSWORD=admin12345 -v redis-data:/data -p 6379:6379 --name redis --restart always redis /bin/sh -c 'redis-server --appendonly yes --requirepass ${REDIS_PASSWORD}'
docker run -v redisinsight:/db -p 8001:8001 -d --name redisinsight redislabs/redisinsight:latest