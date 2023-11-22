# Talisman Workshop

Welcome to the Talisman workshop, this workshop will teach you step-by-step how to setup Talisman application
and scan for secret, credential or any password in the source code.

### Prerequisite

- Node 16

### Step-by-Step

- 0.) Install [husky](https://typicode.github.io/husky/getting-started.html)

- 1.) Install the Talisman
    ```shell
    brew install talisman
    ```
- 2.) Scan the source code folder `/client`
  ```shell
  talisman --scan
  ```

- 3.) Open the Talisman report and verify result at `talisman_report`

### Useful Links

- [Talisman's website](https://thoughtworks.github.io/talisman/)
- [Talisman Github](https://github.com/thoughtworks/talisman)

### Troubleshooting

- [error:0308010C:digital envelope routines::unsupported](https://stackoverflow.com/questions/69692842/error-message-error0308010cdigital-envelope-routinesunsupported)
