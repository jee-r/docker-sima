# Docker-sima

![Drone (cloud)](https://img.shields.io/drone/build/jee-r/docker-sima?style=for-the-badge)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/j33r/sima)
![MicroBadger Layers](https://img.shields.io/microbadger/layers/j33r/sima?style=for-the-badge)

A docker image for [Sima](https://kaliko.me/mpd-sima/)

https://hub.docker.com/r/j33r/sima

## Docker-compose
```
version: '3'
services:
  sima:
    image: j33r/sima:latest
    container_name: sima
    #build: .
    restart: unless-stopped
    #user: ${UID}:${GID}
    depends_on:
      - mpd
    volumes:
      - ./config:/config
```
