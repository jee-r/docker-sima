# Docker-sima
[![Drone (self-hosted)](https://img.shields.io/drone/build/docker/sima?server=https%3A%2F%2Fdrone.c0de.in&style=flat-square)](https://drone.c0de.in/docker/sima)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/j33r/sima?style=flat-square)](https://microbadger.com/images/j33r/sima)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/j33r/sima?style=flat-square)](https://microbadger.com/images/j33r/sima)
[![Docker Pulls](https://img.shields.io/docker/pulls/j33r/sima?style=flat-square)](https://hub.docker.com/r/j33r/sima)
[![DockerHub](https://img.shields.io/badge/Dockerhub-j33r/sima-%232496ED?logo=docker&style=flat-square)](https://hub.docker.com/r/j33r/sima)

A docker image for [Sima](https://kaliko.me/mpd-sima/)

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
