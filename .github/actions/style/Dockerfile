FROM alpine:3.12

RUN apk --no-cache add \
        git \
        uncrustify

COPY entrypoint.sh /entrypoint.sh
COPY freebsd.cfg /uncrustify.cfg

ENTRYPOINT ["/entrypoint.sh"]
