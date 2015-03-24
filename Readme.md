# rtmp-stats-docker

cine.io [Docker](https://docker.com/) container that reports on what's going on in the rtmp-stylist and rtmp-replicator.

# Usage

```bash
docker run  -d --name rtmp-stats -p 8881:80  --link "rtmp-replicator:rtmp-replicator" --link "rtmp-stylist:rtmp-stylist" -e NODE_ENV="development" -e PORT="80" local/rtmp-stats-docker
```

# Notes
