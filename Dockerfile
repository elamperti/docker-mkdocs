FROM alpine:latest
MAINTAINER Enrico Lamperti <elamperti@users.noreply.github.com>

VOLUME  /doc
WORKDIR /doc

RUN apk add --no-cache python py-pip py-setuptools && \
    pip install --no-cache-dir mkdocs && \
    apk del py-pip

EXPOSE 8000

ENTRYPOINT ["mkdocs"]
