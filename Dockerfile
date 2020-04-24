FROM ruby:2.5-buster

RUN apt -y update && \
    apt -y install build-essential \
                     libpq-dev \
                     nodejs \
		             libsqlite3-dev \
		             sqlite3 \
                     vim \
                     ruby2.5-dev \
                     libxml2 \
                     libxml2-dev \
                     libxslt1-dev \
                     zlib1g-dev \
                     imagemagick \
                     libmagick++-dev \
                     make \
                     libssl-dev \
                     libghc-zlib-dev \
                     libcurl4-gnutls-dev \
                     libexpat1-dev \
                     gettext \
                     unzip

WORKDIR /usr/local/src

RUN wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.26.2.tar.gz

RUN tar zxvf git-2.26.2.tar.gz && \
    cd git-2.26.2 && \
    ./configure --prefix=/usr/local && \
    make prefix=/usr/local all && \
    make prefix=/usr/local install

RUN apt-get install -y locales \
    && locale-gen ja_JP.UTF-8

ENV LANG ja_JP.UTF-8

ENV LC_CTYPE ja_JP.UTF-8

RUN localedef -f UTF-8 -i ja_JP ja_JP.utf8

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
