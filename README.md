# Docker-sima
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
    depends_on:
      - mpd
    volumes:
      - ./config:/config
```
