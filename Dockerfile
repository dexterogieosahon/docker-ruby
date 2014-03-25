FROM quay.io/aptible/ubuntu:12.10

RUN apt-get update
RUN apt-get -y install wget build-essential zlib1g-dev libssl-dev \
    libreadline6-dev libyaml-dev && cd /tmp && \
    wget -q http://cache.ruby-lang.org/pub/ruby/ruby-1.9.3-p545.tar.gz && \
    tar xzf ruby-1.9.3-p545.tar.gz && \
    cd ruby-1.9.3-p545 && ./configure --enable-shared --prefix=/usr && \
    make && make install && cd .. && rm -rf ruby-1.9.3-p545*
RUN gem install bundler

ADD test /tmp/test
RUN bats /tmp/test
