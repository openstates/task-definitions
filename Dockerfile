FROM python:3.7
LABEL maintainer="James Turk <james@openstates.org>"

RUN apt update && apt install -y --no-install-recommends \
      git \
      postgresql-client \ 
      awscli \
      rm -rf /var/lib/apt/lists/*

ADD ./scripts /opt/scripts
WORKDIR /opt/scripts/
