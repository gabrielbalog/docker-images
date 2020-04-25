FROM base-gui

USER root

RUN apt-get update && apt-get install -y \
    curl \
    gpg \
    ca-certificates \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN echo "deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main" | \
    tee /etc/apt/sources.list.d/vs-code.list \
    && curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/microsoft.gpg

RUN apt-get update && apt-get install -y \
    code \
    libx11-xcb1 \
    libxtst6 \
    net-tools \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*


USER developer

CMD "/usr/share/code/code --no-sandbox"
