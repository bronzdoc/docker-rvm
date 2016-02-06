FROM ubuntu:latest
MAINTAINER Luis Sagastume <lsagastume1990@gmail.com>

RUN apt-key update
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 \
    && apt-get update -y && apt-get install -y curl \
    && curl -sSL https://get.rvm.io | bash -s stable --ruby

ENV PATH $PATH:/usr/local/rvm/bin/

CMD ["/bin/bash", "--login"]
