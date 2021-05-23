FROM buildpacksio/pack:0.18.1

COPY --from=busybox:latest /bin/sh /bin/sh
COPY --from=busybox:latest /bin/ls /bin/ls
COPY --from=busybox:latest /bin/cp /bin/cp
COPY --from=docker:stable /usr/local/bin/docker /usr/local/bin/docker
COPY entrypoint.sh /entrypoint.sh

USER 0:0

ENTRYPOINT ["/entrypoint.sh"]
