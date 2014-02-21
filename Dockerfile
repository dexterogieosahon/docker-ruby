FROM quay.io/aptible/ubuntu:12.10

RUN apt-get -y install wget build-essential zlib1g-dev libssl-dev \
    libreadline6-dev libyaml-dev && cd /tmp && \
    wget -q http://cache.ruby-lang.org/pub/ruby/ruby-2.0.0-p353.tar.gz && \
    tar xzf ruby-2.0.0-p353.tar.gz && \
    cd ruby-2.0.0-p353 && ./configure --enable-shared --prefix=/usr && \
    make && make install
RUN gem install bundler

ADD test /tmp/test
RUN bats /tmp/test
