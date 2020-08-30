FROM crystallang/crystal

USER root

RUN apt-get update
RUN apt-get install -y zsh

USER gitpod

RUN chsh -y /bin/zsh
RUN git clone git@github.com:jasonm23/.zsh.d ~/.zsh.d
RUN ~/.zsh.d/install
