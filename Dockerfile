FROM python:alpine3.12

RUN mkdir /usr/local/cli
WORKDIR /usr/local/cli
COPY . .
RUN pip3 install --user urllib3 pylint requests mypy==0.730 coverage==5.2 pytest==5.4.3 || echo 'error in pip'

ENTRYPOINT [ "./couchbase-cli" ]