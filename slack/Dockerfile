FROM firefox

USER root

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install wget \
    libappindicator3-1 \
    libnotify4 \
    libnss3 \
    libxss1 \
    libxtst6 \
    xdg-utils \
    libglib2.0-bin \
    libx11-xcb1 \
    libxkbfile1 \
    -y --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# Install steam from debian package
RUN wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.4.2-amd64.deb --no-check-certificate --quiet \
    && dpkg -i slack*.deb \
    && rm slack*.deb

USER developer

CMD "/usr/bin/slack --no-sandbox"
