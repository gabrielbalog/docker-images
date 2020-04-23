FROM base-gui

USER root

RUN apt-get update && apt-get install -y \
    snapd \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN snap install pycharm-professional --classic

USER developer

CMD /opt/app