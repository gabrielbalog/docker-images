FROM base-gui

USER root

RUN apt-get update && apt-get install -y \
    wget \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

USER developer

CMD /opt/app