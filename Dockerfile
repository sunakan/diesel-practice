FROM rust:1-slim as rust-base

ENV DEBIAN_FRONTEND=noninteractive
ENV CARGO_TARGET_DIR=/tmp/target

RUN apt-get update --assume-yes \
  && apt-get install --assume-yes --no-install-recommends \
    libpq-dev \
    make \
    postgresql-client \
  && cargo install diesel_cli --no-default-features --features postgres
WORKDIR /var/local/app
COPY ./app/ ./
