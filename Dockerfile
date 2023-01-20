FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y sudo mysql-server

RUN apt-get update && apt-get install -y \
    openvpn \
    easy-rsa \
    tzdata \
    curl \
    vim \
    zip \
    jq \
    sudo \
    unzip \
    net-tools \
    language-pack-ja \
    && update-locale LANG=ja_JP.UTF-8 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV TZ Asia/Tokyo
ENV TIDB_VERSION=v6.5.0 USE_DB=1 USE_PD=2 USE_KV=2

RUN curl --proto '=https' --tlsv1.2 -sSf https://tiup-mirrors.pingcap.com/install.sh | sh \
    && ln -s /root/.tiup/bin/tiup /bin/tiup


RUN tiup install tidb:${TIDB_VERSION} pd:${TIDB_VERSION} tikv:${TIDB_VERSION} playground prometheus:${TIDB_VERSION} tiflash:${TIDB_VERSION} grafana:${TIDB_VERSION} 

COPY *.sh .

ENTRYPOINT ["/usr/bin/bash"]
CMD ["start.sh"]

