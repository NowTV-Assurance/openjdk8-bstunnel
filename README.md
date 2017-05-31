## Dockerfile Image for OpenSDK Java and Browserstack Local Tunnel

Useful for things like Selenium tests with NightwatchJS or Cucumber.

Java version 1.8

BrowserstackLocalTunnel is downloaded by curl on every build so auto updates its version.

## To use

```
FROM nowtvassurance/openjdk8-bstunnel
```

BrowserStackLocal is added to the path so you can use it within a script in your image that probably starts your browser tests too. Alternatively if you wish to run this tunnel directly you'll need to specify BrowserStackLocal as your entrypoint or command.

Remember to use your browserstack key!

## To build

```bash
docker build \
  -t nowtvassurance/openjdk8-bstunnel \
  .
```

## Questions

If you want another version of java building, just make an issue on Github and we'll be happy to build it.

## NB

The openjdk image already has some debian jessie packages installed:
- bzip2
- unzip
- xz-utils
- openjdk-8-jdk
- ca-certificates-java

