# Trufflehog Workshop

Welcome to the Trufflehog workshop, this workshop will teach you step-by-step how to setup Trufflehog application
and scan for secret, credential or any password in the source code, git repo, s3 bucket.

### Step-by-Step Trufflehog

- 1.) Scan a GitHub Org for only verified secrets
  ```shell
  docker run --rm -it -v "$PWD:/pwd" trufflesecurity/trufflehog:latest github --repo https://github.com/trufflesecurity/test_keys
  ```

- 2.) Scan a GitHub Org for only verified secrets 
  ```shell
  docker run --rm -it -v "$PWD:/pwd" trufflesecurity/trufflehog:latest github --org=trufflesecurity --only-verified
  ```

- 3.) Scan a GitHub Repo for only verified keys and get JSON output
  ```shell
  docker run --rm -it -v "$PWD:/pwd" trufflesecurity/trufflehog:latest git https://github.com/trufflesecurity/test_keys --only-verified --json
  ```

- 4.) Scan a GitHub Repo + its Issues and Pull Requests.
  ```shell
  docker run --rm -it -v "$PWD:/pwd" trufflesecurity/trufflehog:latest github --repo=https://github.com/trufflesecurity/test_keys --issue-comments --pr-comments
  ```

- 5.) Scan individual files or directories
  ```shell
  # docker on Mac
  docker run --rm -it -v "$PWD:/pwd" trufflesecurity/trufflehog:latest filesystem /pwd/src
  
  # docker Windows via PS
  docker run --rm -it -v "${PWD}:/pwd" trufflesecurity/trufflehog:latest filesystem /pwd/src
  ```

### Useful Links

- [Trufflehog](https://github.com/trufflesecurity/trufflehog)
