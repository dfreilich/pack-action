FROM docker:stable-dind

COPY --from=buildpacksio/pack /usr/local/bin/pack /usr/local/bin/pack
COPY entrypoint.sh /entrypoint.sh
COPY /home/runner/.docker/config.json $HOME/.docker/config.json


ENTRYPOINT ["/entrypoint.sh"]