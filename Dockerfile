FROM docker:latest
RUN \
    apk -Uuv add \
    bash \
    curl \
    less \
    git  \
    groff \
    jq \
    py3-pip && \
    pip install --upgrade pip awscli s3cmd && \
    apk --purge -v del py3-pip && \
    rm /var/cache/apk/*
