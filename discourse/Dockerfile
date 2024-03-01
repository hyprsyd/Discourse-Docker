FROM debian:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y curl wget sudo git build-essential libxslt1-dev libcurl4-openssl-dev libksba8 libksba-dev libreadline-dev libssl-dev zlib1g-dev libsnappy-dev libyaml-dev libsqlite3-dev sqlite3 postgresql postgresql-server-dev-all postgresql-contrib libpq-dev redis-server imagemagick optipng jpegoptim pngquant jhead libjpeg-progs
ADD oxipng /usr/local/bin
RUN chmod +x /usr/local/bin/oxipng
RUN wget https://cache.ruby-lang.org/pub/ruby/3.2/ruby-3.2.3.tar.gz
RUN tar -xzvf ruby-3.2.3.tar.gz
WORKDIR /ruby-3.2.3
RUN ./configure
RUN make -j$(nproc)
RUN make install
WORKDIR /
RUN gem update --system
RUN gem install rails
RUN gem install bundler
RUN curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
RUN sudo -E apt-get -y install nodejs
RUN sudo npm install -g svgo
RUN sudo npm install -g yarn
RUN git clone --depth=1 https://github.com/hyprsyd/discourse.git /discourse
WORKDIR /discourse
RUN bundle install
RUN yarn install
ADD start.sh /discourse/start.sh
RUN chmod +x /discourse/start.sh
EXPOSE 3000
ENTRYPOINT [ "bash", "start.sh" ]


