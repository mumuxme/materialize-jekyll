FROM debian:stretch


RUN deps='liblzma-dev zlib1g-dev ruby ruby-bundler ruby-dev' \
    && apt-get update \
    && apt-get install -y gcc g++ make \
    && apt-get install -y $deps


ARG GEM_MIRROR=mirror.https://rubygems.org
ENV GEM_MIRROR ${GEM_MIRROR}

ARG TZ=Etc/UTC
ENV TZ ${TZ}


COPY Gemfile* /tmp/
WORKDIR /tmp
RUN bundle config mirror.https://rubygems.org ${GEM_MIRROR} \
    && bundle install


RUN ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime \
    && dpkg-reconfigure -f noninteractive tzdata


ADD . /materialize-jekyll
WORKDIR /materialize-jekyll


EXPOSE 4000
