FROM ruby:3-slim-bullseye

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        ca-certificates \
        git \
        wget \
        imagemagick \
        librsvg2-bin \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN gem install badge

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD []    
