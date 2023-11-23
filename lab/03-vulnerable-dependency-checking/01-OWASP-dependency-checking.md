# OWASP Dependency Check Workshop

Welcome to the OWASP Dependency Check workshop, this workshop will teach you step-by-step how to setup OWASP Dependency
Check application
and scan for secret, credential or any password in the source code, git repo, s3 bucket.

### Step-by-Step OWASP Dependency Check

- 1.) Install the application
  ```shell
  brew update && brew install dependency-check
  ```
  
- 2.) Scan the source code
  ```shell
  dependency-check --project "My project" --scan "src/"
  ```

### Useful Links

- [OWASP Dependency Check](https://owasp.org/www-project-dependency-check/)
