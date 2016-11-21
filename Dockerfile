FROM ubuntu:16.04
RUN apt-get update && apt-get install -y g++ \
  make \
  libboost-all-dev \
  libev-dev \
  libmysqlclient-dev \
  libmysql++-dev
COPY ocelot ocelot/
WORKDIR ocelot
RUN ./configure --with-boost-libdir=/usr/lib/x86_64-linux-gnu --with-ev-lib=/usr/lib/x86_64-linux-gnu --with-mysql-lib=/usr/lib/x86_64-linux-gnu
RUN make
