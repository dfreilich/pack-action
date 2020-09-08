FROM docker:stable-dind

COPY --from=buildpacksio/pack /usr/local/bin/pack /usr/local/bin/pack
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
