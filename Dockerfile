FROM sonarqube:6.3
MAINTAINER willemvd <willemvd@github>

# Database configuration
# Defaults to using H2, can be overriden with environment variables:
#SONARQUBE_JDBC_USERNAME=sonar
#SONARQUBE_JDBC_PASSWORD=sonar
#SONARQUBE_JDBC_URL=

VOLUME ["${SONARQUBE_HOME}/data", "${SONARQUBE_HOME}/extensions"]

RUN useradd -l -u 99 -r -g 0 -m -s /sbin/nologin \
    -c "sonarqube application user" sonarqube && \
    chmod -R g+w ${SONARQUBE_HOME}

USER sonarqube

ENTRYPOINT ["./bin/run.sh"]
