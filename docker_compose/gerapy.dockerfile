FROM python:3.7
MAINTAINER weiaiyao
COPY requirements.txt /tmp/requirements.txt
COPY run.sh /usr/bin/run.sh
RUN mkdir /app \
    && pip3 install -r /tmp/requirements.txt \
    && chmod a+x /usr/bin/run.sh
WORKDIR /app
ENTRYPOINT /usr/bin/run.sh
