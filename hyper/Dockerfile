FROM base-gui

USER root

RUN sudo dpkg --add-architecture i386

RUN apt-get update && apt-get install -y \
    wget \
    gconf2 \
    gconf-service \
    libnotify4 \
    libappindicator1 \
    libxtst6 \
    libnss3 \
    libxss1 \
    libgtk-3-0 \
    libx11-xcb1 \
    bash \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# Install steam from debian package
RUN wget https://github.com/zeit/hyper/releases/download/3.0.2/hyper_3.0.2_amd64.deb --no-check-certificate --quiet \
    && dpkg -i hyper*.deb \
    && rm hyper*.deb

SHELL ["/bin/bash", "-c"]

USER developer

CMD /opt/Hyper/hyper