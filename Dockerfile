FROM alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk update \
    && apk --no-cache add ruby \
    ruby-etc \
    ruby-bigdecimal \
    ruby-io-console \
    ca-certificates \
    libressl \
    less \
    git \
    curl \
    && apk add --virtual .build-dependencies \
    build-base \
    ruby-dev \
    libressl-dev\
    && gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/ \
    && gem install cocoapods -v 1.9.3 \
    && gem cleanup \
    && apk del .build-dependencies \
    && rm -rf /usr/lib/ruby/gems/*/cache/* \
    /var/cache/apk/* \
    /tmp/* \
    /var/tmp/* \
    && adduser -D cocoa

USER cocoa
