FROM phusion/baseimage

RUN apt-get update \
    && apt-get install -y --no-install-recommends git python python-pip python-setuptools groff less wget jq \
    && pip install --upgrade setuptools awscli wheel \
    && wget -qO- https://get.docker.com/ | sh \
    && usermod -aG docker $(whoami)
