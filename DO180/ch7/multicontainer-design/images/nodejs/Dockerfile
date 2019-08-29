FROM centos:centos7.5.1804

MAINTAINER Your Name <email>

ENV NODEJS_VERSION=4.0 \
    HOME=/opt/app-root/src

RUN yum install -y centos-release-scl-rh && \
    yum install -y rh-nodejs4 && \
    yum clean all -y && \
    mkdir -p /opt/app-root && \
    groupadd -r appuser -f -g 1001 && \
    useradd -u 1001 -r -g appuser -m -d ${HOME} -s /sbin/nologin \
        -c "Application User" appuser && \
    chown -R appuser:appuser /opt/app-root && \
    chmod -R 755 /opt/app-root

ADD ./enable-rh-nodejs4.sh /etc/profile.d/

USER appuser
WORKDIR ${HOME}

CMD ["echo", "You must create your own container from this one."]
 

