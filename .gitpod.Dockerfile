FROM crystallang/crystal

RUN apt-get update
RUN apt-get install -y zsh
RUN apt-get install -y wget
RUN chsh -s /bin/zsh
RUN sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
RUN pwd
RUN ls -lah
RUN cp -r .oh-my-zsh /etc/skel/
RUN cp .zshrc /etc/skel/
