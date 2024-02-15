FROM --platform=linux/amd64 ubuntu:23.10

RUN apt update && apt install -y ca-certificates libpq-dev sqlite3 && apt clean
RUN update-ca-certificates

WORKDIR /usr/src/csml

COPY target/release/csml_server server

RUN chmod 755 server

RUN groupadd -r csml && useradd -r -g csml csml
USER csml

EXPOSE 5000

CMD ./server


#FROM --platform=linux/arm64 ubuntu:22.04

# RUN apt update && apt install -y ca-certificates libpq-dev && apt clean
# RUN update-ca-certificates

# WORKDIR /usr/src/csml

# COPY target/aarch64-unknown-linux-gnu/release/csml_server server

# RUN chmod 755 server

# RUN groupadd -r csml && useradd -r -g csml csml
# USER csml

# EXPOSE 5000

# CMD ./server
