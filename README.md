# SonarQube for Docker non-root environments

Docker image that is used to run SonarQube in an environment where running a Docker image as root is prohibited (like OpenShift v3).
The default SonarQube Docker image needs to run as root, so a layer is required on top to prevent this.

The repository also contains a OpenShift v3 template that can be used to setup an environment with persistent PostgreSQL support.

Docker image can also be found in the Docker registry [willemvd/sonarqube-unprivileged](https://hub.docker.com/r/willemvd/sonarqube-unprivileged/)