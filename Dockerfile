FROM ruby:3-slim-bullseye

SHELL ["/bin/ash", "-eo", "pipefail", "-c"]

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        git \
        wget \
        imagemagick \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN gem install badge

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD []    
