FROM crystallang/crystal

RUN apt-get install -y wget curl

RUN echo "alias gss=\"git status -s\"" >> $HOME/.bashrc
RUN echo "alias gpm=\"git push origin master\"" >> $HOME/.bashrc
RUN echo "alias gup=\"git pull --rebase\"" >> $HOME/.bashrc
