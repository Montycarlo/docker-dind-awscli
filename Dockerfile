FROM docker:latest
RUN \
    apk -Uuv add \
    bash \
    curl \
    less \
    git  \
    groff \
    jq \
    python3 \
    py3-pip && \
    pip install --upgrade pip six awscli s3cmd && \
    rm /var/cache/apk/* && \
    mkdir -p /root/.aws
