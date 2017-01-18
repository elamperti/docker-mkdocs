FROM alpine:3.4
MAINTAINER Enrico Lamperti <elamperti@users.noreply.github.com>

VOLUME  /doc
WORKDIR /doc

RUN apk add --no-cache python py-pip py-setuptools && \
    pip install --no-cache-dir mkdocs pymdown-extensions mkdocs-material pygments && \ 
    apk del py-pip

EXPOSE 8000

ENTRYPOINT ["mkdocs"]
