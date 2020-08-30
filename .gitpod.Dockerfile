FROM crystallang/crystal

RUN apt-get update
RUN apt-get install -y zsh
RUN apt-get install -y wget
RUN chsh -s /bin/zsh

WORKDIR /root/

RUN wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
RUN chmod +x /root/install.sh
RUN /root/install.sh
RUN cp -r .oh-my-zsh /etc/skel/
RUN cp .zshrc /etc/skel/
