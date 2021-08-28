FROM alpine:3.14
ADD start.sh /app/start.sh
RUN \
  apk update && apk add ca-certificates && \
  mkdir -p /tmp/centrifugo && \
  cd /tmp/centrifugo && \
  wget https://github.com/centrifugal/centrifugo/releases/download/v3.0.0-beta.2/centrifugo_3.0.0-beta.2_linux_amd64.tar.gz && \
  tar xzf centrifugo_3.0.0-beta.2_linux_amd64.tar.gz && \
  mkdir -p /app && \
  mv centrifugo /usr/bin/centrifugo && \
  chmod 755 /app/start.sh && \
  rm -rf /tmp/centrifugo
ENTRYPOINT ["/app/start.sh"]
