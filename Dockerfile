FROM python:3-alpine

LABEL maintainer="Jee jee@jeer.fr" \
      description="MPD_sima is an non interactive MPD autoqueue client" \
      original_url_project="https://kaliko.me/mpd-sima/"

RUN pip3 install --upgrade MPD_sima && \
    mkdir -p /config

COPY /config/sima.conf /config/sima.conf

ENV XDG_DATA_HOME="/config/"

ENTRYPOINT mpd-sima --config /config/sima.conf --var-dir="/config/"
