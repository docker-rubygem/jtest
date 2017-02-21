FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.6

RUN gem install jtest --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["jtest"]
CMD ["--help"]
