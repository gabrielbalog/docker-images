FROM base-gui

USER root

RUN apt-get update && apt-get install -y \
    wget \
    openjdk-11-jre \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN wget -O pycharm.tar.gz \
    "https://download.jetbrains.com/python/pycharm-professional-2020.1.tar.gz" \
    --no-check-certificate \
    --quiet \
    && tar -xf pycharm.tar.gz -C /opt \
    && sudo chown -R developer:developer /opt/pycharm-2020.1/ \ 
    && rm pycharm.tar.gz \
    && ln -s /opt/pycharm-2020.1/bin/pycharm.sh /usr/local/sbin/pycharm

USER developer

CMD /opt/pycharm-2020.1/bin/pycharm.sh