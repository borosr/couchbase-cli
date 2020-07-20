FROM python:alpine3.12

WORKDIR /usr/local/cli
COPY . .
RUN apk add --no-cache --virtual build-base \
    && pip3 install --user urllib3 requests \
    && apk del build-base

ENTRYPOINT [ "./couchbase-cli" ]