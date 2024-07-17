FROM ubuntu

RUN apt-get update && apt-get install -y \
    git \
    python3.10 \
    python3-pip

RUN pip install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]