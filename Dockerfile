# Dockerfile
FROM ruby:2.6.3

ENV APP_ROOT /app

WORKDIR $APP_ROOT

# mysqlのクライアントをインストール
RUN apt-get update && apt-get install -y \
    default-mysql-client \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

