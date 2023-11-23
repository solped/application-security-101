export SONARQUBE_URL="localhost:9000"
export YOUR_PROJECT_KEY="sast"
export AUTH_TOKEN="sqp_539824c89d782875aa71fd8923120f585cb2ce57"
export YOUR_REPO=./../../src/

docker run \
    --network=host \
    --rm \
    -e SONAR_HOST_URL="http://${SONARQUBE_URL}" \
    -e SONAR_SCANNER_OPTS="-Dsonar.projectKey=${YOUR_PROJECT_KEY}" \
    -e SONAR_TOKEN="${AUTH_TOKEN}" \
    -v "${YOUR_REPO}:/usr/src" \
    sonarsource/sonar-scanner-cli
