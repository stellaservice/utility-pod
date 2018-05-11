FROM ruby:2.5.1-stretch

RUN apt-get update -y && apt-get install -y \
  curl dnsutils sudo python2.7 python-pip vim-nox \
  jq

RUN git clone https://github.com/steve21168/dotfiles_home && \
  cd dotfiles_home && ./dotfiles_install.sh


