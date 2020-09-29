FROM golang:alpine
MAINTAINER Bastian de Byl <bastian@bdebyl.net>

ENV XDG_CACHE_HOME=/src/.cache

WORKDIR /src

# aws-cli dependencies: groff, less
RUN apk -v --update add git && \
    rm /var/cache/apk/*

RUN mkdir .cache && \
    go get github.com/bold-commerce/go-shopify

VOLUME ["/src"]
ENTRYPOINT ["go"]
