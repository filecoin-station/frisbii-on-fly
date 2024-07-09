# syntax = docker/dockerfile:1

FROM golang:1.21-alpine
WORKDIR /app

ENV GOPATH=/app/go
RUN go install github.com/ipld/frisbii/cmd/frisbii@latest

ADD entrypoint.sh entrypoint.sh
ADD data data

EXPOSE 3000
ENTRYPOINT [ "/app/entrypoint.sh" ]

CMD [ \
  "--announce=roots", \
  "--listen=:3000", \
  "--public-addr=https://frisbii.fly.dev:443", \
  "--car=/app/data/random-words.car", \
  "--car=/app/data/asteroid-landing.car" \
  ]
