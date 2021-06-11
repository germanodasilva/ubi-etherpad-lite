FROM registry.access.redhat.com/ubi8/ubi

ENV ETHERPAD_VERSION 1.8.0
ENV ETHERPAD_USER etherpad-lite
ENV ETHERPAD_PORT 9001
ENV ETHERPAD_BASEDIR /opt
ENV ETHERPAD_WORKDIR ${ETHERPAD_BASEDIR}/etherpad-lite
ENV ETHERPAD_HOMEDIR /home/${ETHERPAD_USER}
ENV ETHERPAD_BIN ${ETHERPAD_WORKDIR}/etherpad-lite/bin


## NOVO COMENTARIO
#ADD helpers ${ETHERPAD_WORKDIR}/helpers

RUN yum -y install git nodejs && \
    yum -y clean all && \
    useradd -m -u 1000 -g 0 ${ETHERPAD_USER} && \
    mkdir -p ${ETHERPAD_WORKDIR} && \
    cd ${ETHERPAD_WORKDIR} && \
    #pwd && \
    git clone --branch master git://github.com/ether/etherpad-lite.git  && \
    #chown 1000:0 -R ${ETHERPAD_WORKDIR} && \
    #ls -l && \
    #chgrp -R 0 ${ETHERPAD_HOMEDIR} && \
    #ls -l && \
    #chmod -R g+rwX ${ETHERPAD_HOMEDIR} && \
    ${ETHERPAD_BIN}/installDeps.sh && \
    chown 1000:0 -R ${ETHERPAD_WORKDIR}

EXPOSE ${ETHERPAD_PORT}

USER ${ETHERPAD_USER}

WORKDIR ${ETHERPAD_BIN}

CMD ["sh", "-c", "${ETHERPAD_BIN}/run.sh"]
