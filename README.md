# Docker-sima
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/j33r/sima?style=flat-square)
![GitHub Workflow Status (branch)](https://img.shields.io/github/actions/workflow/status/jee-r/docker-sima/deploy.yaml?branch=main&style=flat-square)
[![DockerHub](https://img.shields.io/badge/Dockerhub-j33r/sima-%232496ED?logo=docker&style=flat-square)](https://hub.docker.com/r/j33r/sima)
[![ghcr.io](https://img.shields.io/badge/ghrc%2Eio-jee%2D-r/sima-%232496ED?logo=github&style=flat-square)](https://ghcr.io/jee-r/sima)

A docker image for [Sima](https://kaliko.me/mpd-sima/)

# What is Sima ?

From [https://kaliko.me/mpd-sima/](https://kaliko.me/mpd-sima/):

> MPD_sima is an non interactive MPD autoqueue client running in the background. It will queue new tracks chosen among artists similar to your current queued tracks, provided a title is found in your music library.
>
> Similar artists are fetched from last.fm.
>
> This client allows you to never run out of music when your queue is getting short. 

- Source Code : https://gitlab.com/kaliko/sima
- Documentation: https://media.kaliko.me/sima/

# How to use these images

All the lines commented in the examples below should be adapted to your environment. 

## With Docker

```bash
docker run \
    --detach \
    --interactive \
    --name sima \
    --volume /etc/localtime:/etc/localtime:ro \
    --volume ./config:config \
    --env TZ=Europe/Paris \
    ghcr.io/jee-r/sima:dev
```

## With Docker Compose

[`docker-compose`](https://docs.docker.com/compose/) can help with defining the `docker run` config in a repeatable way rather than ensuring you always pass the same CLI arguments.

Here's an example `docker-compose.yml` config:

```yaml
version: '3'
services:
  sima:
    image: ghcr.io/jee-r/sima:dev
    container_name: sima
    restart: unless-stopped
    #user: ${UID}:${GID}
    depends_on:
      - mpd
    environment:
      - TZ=Europe/Paris
    volumes:
      - ./config:/config
      - /etc/localtime:/etc/localtime:ro
```

## Volume mounts

- `/etc/localtime`: This directory is for have the same time as host in the container.

## Environment variables

- `TZ`: To change the timezone of the container set the `TZ` environment variable. The full list of available options can be found on [Wikipedia](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).

# License

This project is under the [GNU Generic Public License v3](/LICENSE) to allow free use while ensuring it stays open.
