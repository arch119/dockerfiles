# Pull base image.
FROM arch119shambhu/python3base:1.0
RUN useradd -ms /bin/bash buildbot 

USER buildbot
WORKDIR /home/buildbot

#Install buildbot as buildbot 
RUN \
    virtualenv --no-site-packages venv && \
    . venv/bin/activate && \
    pip install 'buildbot[bundle]' && \
    pip install buildbot-worker && \
    pip install setuptools-trial && \
    buildbot create-master master && \
    mv master/master.cfg.sample master/master.cfg && \
    buildbot-worker create-worker worker localhost example-worker pass
