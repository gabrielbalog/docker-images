FROM base-gui

USER root

RUN dpkg --add-architecture i386

RUN apt-get update && apt-get install -y \
    wget \
    libgl1-mesa-dri:i386 \
    libgl1-mesa-glx:i386 \
    libc6:i386 \
    nautilus \
    xdg-utils \
    # Steam
    ca-certificates \
    curl \
    libnss3 \
    python3 \
    gnome-terminal \
    xz-utils \
    zenity \
    file \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# Install steam from debian package
RUN wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb --no-check-certificate \
    && dpkg -i steam.deb \
    && rm steam.deb

USER developer

CMD /usr/bin/steam