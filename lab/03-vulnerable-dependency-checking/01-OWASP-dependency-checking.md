# OWASP Dependency Check Workshop

Welcome to the OWASP Dependency Check workshop, this workshop will teach you step-by-step how to setup OWASP Dependency
Check application
and scan for secret, credential or any password in the source code, git repo, s3 bucket.

### Step-by-Step OWASP Dependency Check

- 1.) Install the application
  ```shell
  brew update && brew install dependency-check
  ```
  Or download a package via [Package download-8.4.3](https://github.com/jeremylong/DependencyCheck/releases/tag/v8.4.3)


- 2.) Scan the source code
  ```shell
  dependency-check --project "My project" --scan "src/"
  
  ~/Downloads/dependency-check/bin/dependency-check.sh --scan . -o .
  ```

### Useful Links

- [OWASP Dependency Check](https://owasp.org/www-project-dependency-check/)
- [Package download-8.4.3](https://github.com/jeremylong/DependencyCheck/releases/tag/v8.4.3)
