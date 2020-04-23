FROM base-gui

USER root

RUN apt-get update && apt-get install -y \
    wget \
    libgtk-3-0 \
    libx11-xcb1 \
    libdbus-glib-1-2 \
    libxt6 \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /opt/firefox \
    && wget -O firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-nightly-latest&os=linux64&lang=en-US" --no-check-certificate \
    && tar -xvjf firefox.tar.bz2 -C /opt \
    && sudo chown -R developer:developer /opt/firefox \ 
    && rm firefox.tar.bz2

USER developer

CMD /opt/firefox/firefox