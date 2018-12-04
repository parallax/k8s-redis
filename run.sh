#!/bin/sh
mkdir -p /efs/redis
/usr/bin/redis-server \
    --protected-mode no \
    --maxmemory-policy allkeys-lru \
    --maxmemory ${REDIS_MEMORY:-64M} \
    --append-only yes \
    --dir /efs/redis \
    --appendfsync everysec