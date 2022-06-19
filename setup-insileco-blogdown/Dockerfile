FROM eddelbuettel/r2u:22.04

LABEL org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.source="https://github.com/inSileco/actions" \
      org.opencontainers.image.vendor="inSileco" \
      org.opencontainers.image.authors="Kevin Cazelles <kevin.cazelles@insileco.io>"

RUN apt-get install -y hugo

RUN install.r animation bibtex blogdown kableExtra htmltools igraph latex2exp \
  lwgeom mapview microbenchmark RColorBrewer remotes rfishbase rgdal rgeos sf \
  yaml

RUN installGithub.r inSileco/graphicsutils inSileco/inSilecoRef \
  inSileco/inSilecoMisc mitchelloharawild/icons

RUN r -e "icons::download_fontawesome()"

COPY entrypoint.sh /entrypoint.sh

# https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action
ENTRYPOINT ["/entrypoint.sh"]
