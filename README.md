# Docker-sima
A docker image for [Sima](https://kaliko.me/mpd-sima/)

[![Build Status](https://cloud.drone.io/api/badges/jee-r/docker-sima/status.svg?ref=refs/heads/master)](https://cloud.drone.io/jee-r/docker-sima)


## Docker-compose
```
version: '3'

services:

  sima:
    image: j33r/sima:latest
    container_name: sima
    #build: .
    restart: unless-stopped
    depends_on:
      - mpd
    volumes:
      - ./config:/config
```
