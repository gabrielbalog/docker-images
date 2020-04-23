FROM ubuntu:latest

# Updating image
# Instaling audio packages
RUN apt-get update && apt-get full-upgrade -y \
    && apt-get install -y \
    dbus-x11 \
    alsa-utils \
    libpulse0 \
    sudo \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# Replace 1000 with your user / group id
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer