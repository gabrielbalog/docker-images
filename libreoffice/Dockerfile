FROM base-gui

USER root

RUN apt-get update \
    && apt-get install software-properties-common -y \
    && sudo add-apt-repository ppa:libreoffice/ppa \
    && apt-get install -y \
    libreoffice \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

USER developer

CMD /usr/bin/libreoffice