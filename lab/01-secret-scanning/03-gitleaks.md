# Gitleaks Workshop

Welcome to the Gitleaks workshop, this workshop will teach you step-by-step how to setup Gitleaks application
and scan for secret, credential or any password in the source code, git repo, s3 bucket.

### Prerequisite

- Gitleaks
  ```shell
  brew install gitleaks
  ```

### Step-by-Step Gitleaks

- 1.) Scan a src folder
  ```shell
  gitleaks detect --source src -v
  
  # docker version on Mac
  docker run --rm -it -v "$PWD:/pwd" zricethezav/gitleaks:latest detect --source /pwd/src -v
  
  # docker version via powershell
  docker run --rm -it -v "${PWD}:/pwd" zricethezav/gitleaks:latest detect --source /pwd/src -v
  ```

### Useful Links

- [Gitleaks](https://github.com/gitleaks/gitleaks)
