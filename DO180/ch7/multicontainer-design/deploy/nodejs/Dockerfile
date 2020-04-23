FROM	do180/nodejs
MAINTAINER username <username@example.com>

COPY run.sh build ${HOME}/
RUN scl enable rh-nodejs8 'npm install'
EXPOSE	30080

CMD	["scl","enable","rh-nodejs8","./run.sh"]
