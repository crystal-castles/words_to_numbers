FROM crystallang/crystal

RUN apt-get update
RUN apt-get install -y zsh
RUN apt-get install -y wget
RUN chsh -s /bin/zsh

WORKDIR /root/

RUN wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh

WORKDIR /

RUN chmod +x /root/install.sh
RUN /root/install.sh
RUN cp -r /root/.oh-my-zsh /etc/skel/
RUN cp /root/.zshrc /etc/skel/

RUN rm -rf /root/.oh-my-zsh /root/.zshrc

