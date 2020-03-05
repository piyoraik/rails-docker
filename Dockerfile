FROM ruby:2.5-buster

RUN apt -y update && \
    apt -y install build-essential \
                     libpq-dev \
                     nodejs \
		             libsqlite3-dev \
		             sqlite3 \
                     vim \
                     git \
                     ruby2.5-dev \
                     libxml2 \
                     libxml2-dev \
                     libxslt1-dev \
                     zlib1g-dev \
                     imagemagick \
                     libmagick++-dev

RUN apt -y install zsh

RUN curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh && \
    sh ./install.sh

RUN gem install -v 5.2.3 rails

RUN  gem install bundler && \
     gem install listen && \
     gem install puma && \
     gem install sass && \
     gem install tilt && \
     gem install spring && \
     gem install byebug && \
     gem install chromedriver-helper && \
     gem install sqlite3 && \
     gem install rest-client

RUN mkdir app

WORKDIR /app/

