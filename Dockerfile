FROM ruby:2.6.1
ENV LANG C.UTF-8

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get update -qq && \
    apt-get install -y openssl build-essential nodejs && \
    curl -o- -L https://yarnpkg.com/install.sh | bash && \
    rm -rf /var/lib/apt/lists/*
ENV PATH /root/.yarn/bin:/root/.config/yarn/global/node_modules/.bin:$PATH

ENV APP_HOME /neo4j-rails-sample
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/

ENV BUNDLE_GEMFILE=$APP_HOME/Gemfile \
  BUNDLE_JOBS=2 \
  BUNDLE_PATH=/bundle

ADD . $APP_HOME
