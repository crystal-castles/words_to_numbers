FROM crystallang/crystal

RUN apt-get update ; \
 apt-get install -y zsh ; \
 apt-get install -y wget ; \
 chsh -s /bin/zsh

WORKDIR /root/

RUN wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh ; \
  source ./install.sh ; \
  cp -r .oh-my-zsh /etc/skel/ ; \
  cp .zshrc /etc/skel/
