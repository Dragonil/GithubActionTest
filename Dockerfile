FROM jfrog.dev.hub.vwgroup.com/remote-jfrog-releases/jfrog/artifactory-pro:7.46.6
USER root
RUN mkdir -p /.config/jgit
RUN  \
  echo "HOME=/home/artifactory" > /etc/default/useradd && \
  chgrp -R 0 /artifactory_bootstrap && chmod -R g=u /artifactory_bootstrap && \
  chgrp -R 0 /docker && chmod -R g=u /docker && \
  chgrp -R 0 /home && chmod -R g=u /home && \
  chgrp -R 0 /opt/jfrog/artifactory && chmod -R g=u /opt/jfrog/artifactory && \
  chgrp -R 0 /var/opt/jfrog/artifactory && chmod -R g=u /var/opt/jfrog/artifactory && \
  chgrp -R 0 /entrypoint-artifactory.sh && chmod -R g=u /entrypoint-artifactory.sh && \
  chgrp -R 0 /.config/jgit && chmod -R g=u /.config/jgit
