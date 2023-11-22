# Talisman Workshop

Welcome to the Talisman workshop, this workshop will teach you step-by-step how to setup Talisman application
and scan for secret, credential or any password in the source code.

### Prerequisite

- Node 16

### Step-by-Step

- 0) Install pre-commit hook
  ```shell
  brew install pre-commit
  ```

- 1.) Install the Talisman
  ```shell
  curl https://thoughtworks.github.io/talisman/install.sh > ~/install-talisman.sh 
  chmod +x ~/install-talisman.sh
  ```

- 2.) Install pre-commit hook`
  ```shell
  ~/install-talisman.sh pre-commit
  ```

- 3.) Adding files with credentials
  ```shell
  mkdir sec-files-001 && cd sec-files-001 
  echo "username=teracloud-user" > username
  echo "password=teracloud-password" > password.txt
  echo "apiKey=aPPs32988sab21SA1221vdsXeTYY_243" > ultrasecret
  echo "base64encodedsecret=aPPs32988sss67SA1229vdsXeTXY_27777==" > secret
  ```

### Useful Links

- [Talisman's website](https://thoughtworks.github.io/talisman/)
- [Talisman Github](https://github.com/thoughtworks/talisman)

### Troubleshooting

- [error:0308010C:digital envelope routines::unsupported](https://stackoverflow.com/questions/69692842/error-message-error0308010cdigital-envelope-routinesunsupported)
