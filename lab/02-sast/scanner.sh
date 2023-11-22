export SONARQUBE_URL="localhost:9000"
export YOUR_PROJECT_KEY="sast-demo"
export AUTH_TOKEN="sqp_38734db8c91d2223e36e11afd320c03fb9192900"
export YOUR_REPO=./../../src/

docker run \
    --network=host \
    --rm \
    -e SONAR_HOST_URL="http://${SONARQUBE_URL}" \
    -e SONAR_SCANNER_OPTS="-Dsonar.projectKey=${YOUR_PROJECT_KEY}" \
    -e SONAR_TOKEN="${AUTH_TOKEN}" \
    -v "${YOUR_REPO}:/usr/src" \
    sonarsource/sonar-scanner-cli
