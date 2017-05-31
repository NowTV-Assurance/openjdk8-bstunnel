FROM openjdk:8-jdk
MAINTAINER NowTV Assurance <nowtv.assurance@gmail.com>

RUN curl -sSL https://www.browserstack.com/browserstack-local/BrowserStackLocal-linux-x64.zip \
    > /tmp/browserstack.zip \
  && unzip /tmp/browserstack.zip -d /tmp \
  && rm /tmp/browserstack.zip \
  && mv /tmp/BrowserStackLocal /usr/bin/BrowserStackLocal
