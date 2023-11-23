# SonarQube Workshop

Welcome to the SonarQube workshop, this workshop will teach you step-by-step how to setup SonarQube application
and scan for vulnerabilities, tech debt, security risk in the source code.

### Prerequisite

- Docker
- Docker-compose

### Step-by-Step Sonarqube

- 1.) Start the SonarQube server via docker-compose
  ```shell
  docker-compose up -d
  ```

- 2.) Login with user `admin` and password `admin`, then change to your own account via `http://localhost:9000`


- 3.) Set up a new local project and copy project_id, auth_key
  ![](/Users/worasitdaimongkol/Repositories/NTC/application-security-101/images/003-sonarqube.png)


- 4.) Replace project_id, auth_key in [scanner.sh](scanner.sh), Then execute SonarScanner CLI via docker and publish
  result to SonarQube Server
  ```shell
  bash lab/02-sast/scanner.sh
  ```

- 4.) Go and check on the Sonar server, you should see security hotspot
  ![](/Users/worasitdaimongkol/Repositories/NTC/application-security-101/images/002-sonarqube.png)

### Useful Links

- [Sonarqube](https://docs.sonarsource.com/sonarqube/latest/)
- [SonarScanner](https://docs.sonarsource.com/sonarqube/10.3/analyzing-source-code/scanners/sonarscanner/)
