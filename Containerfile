ARG FREEBSD_RELEASE

FROM ghcr.io/appjail-makejails/core:${FREEBSD_RELEASE}

ARG NO_PKGCLEAN

LABEL org.opencontainers.image.title="ttyd" \
    org.opencontainers.image.description="Share your terminal over the web" \
    org.opencontainers.image.source="https://github.com/AppJail-makejails/ttyd" \
    org.opencontainers.image.url="https://github.com/AppJail-makejails/ttyd" \
    org.opencontainers.image.vendor="DtxdF" \
    org.opencontainers.image.authors="Jesús Daniel Colmenares Oviedo <dtxdf@disroot.org>"

RUN set -xe; \
    \
    pkg update; \
    pkg install -U ttyd; \
    \
    if [ -z "${NO_PKGCLEAN}" ]; then \
        pkg clean -a; \
        rm -rf /var/cache/pkg/*; \
    fi; \
    rm -rf /var/db/pkg/repos/*

EXPOSE 7681
WORKDIR /root

ENTRYPOINT ["ttyd"]
CMD ["-W", "/bin/sh"]
