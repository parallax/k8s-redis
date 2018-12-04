#!/bin/sh
mkdir -p /efs/redis
/usr/bin/redis-server \
    --protected-mode no \
    --maxmemory-policy allkeys-lru \
    --maxmemory ${REDIS_MEMORY:-64M} \
    --appendonly yes \
    --dir /efs/redis \
    --appendfsync everysec