FROM base-gui

USER root

RUN apt-get update && apt-get install -y \
    nemo \
    adwaita-icon-theme-full \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

USER developer

CMD /usr/bin/nemo