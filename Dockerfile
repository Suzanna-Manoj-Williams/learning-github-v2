FROM ubuntu:latest

RUN sudo apt-get update && apt-get install -y \
    python3.10 \
    pip \
    git

RUN pip install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]