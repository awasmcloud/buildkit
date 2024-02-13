FROM ubuntu:18.04

LABEL version="1.0.0"
LABEL repository="https://github.com/awasmcloud/build"
LABEL homepage="https://awasmcloud.com/awasm"
LABEL maintainer="Niranjan <support@awasmcloud.com>"

LABEL "com.github.actions.name"="AwasmCloud Build"
LABEL "com.github.actions.description"="Build an apps to deploy on AwasmCloud"
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="blue"

RUN apt-get -qq update && apt-get -qq -y install curl

RUN curl -L https://awasmcloud.com/cli/linux/awasm -o /tmp/awasm \
    && mv /tmp/awasm /usr/local/bin/awasm \
    && chmod 755 /usr/local/bin/awasm

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
