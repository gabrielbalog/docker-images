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
    libsecret-1-0 \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# Install steam from debian package
RUN wget https://github.com/Eugeny/terminus/releases/download/v1.0.108/terminus-1.0.108-linux.deb --no-check-certificate --quiet \
    && dpkg -i terminus*.deb \
    && rm terminus*.deb

RUN usermod --shell /bin/bash developer

USER developer

CMD /usr/bin/terminus