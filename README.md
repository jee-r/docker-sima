# Docker-sima

![Drone (cloud)](https://img.shields.io/drone/build/jee-r/docker-sima?style=flat-square)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/j33r/sima?style=flat-square)
![MicroBadger Layers](https://img.shields.io/microbadger/layers/j33r/sima?style=flat-square)
![Docker Pulls](https://img.shields.io/docker/pulls/j33r/sima?style=flat-square)
![DockerHub](https://img.shields.io/badge/Dockerhub-j33r/sima-%232496ED?logo=docker&link=https://hub.docker.com/r/j33r/sima&link=https://hub.docker.com/r/j33r/sima&style=flat-square)

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
