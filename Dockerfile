FROM python:3-alpine

LABEL name="docker-beets" \
      maintainer="Jee jee@jeer.fr" \
      description="MPD_sima is an non interactive MPD autoqueue client https://kaliko.me/mpd-sima/" \
      url="https://kaliko.me/mpd-sima/" \
      org.label-schema.vcs-url="https://github.com/jee-r/docker-sima" \
      org.opencontainers.image.source="https://github.com/jee-r/docker-sima"

RUN pip3 install --upgrade MPD_sima && \
    mkdir -p /config

COPY /config/sima.conf /config/sima.conf

ENV XDG_DATA_HOME="/config/"

ENTRYPOINT ["mpd-sima", "--config /config/sima.conf", "--var-dir='/config/'"]
