FROM crystallang/crystal

RUN apt-get update
RUN apt-get install -y wget curl

RUN echo $HOME

RUN echo "alias gss=\"git status -s\"" >> $HOME/.bashrc
RUN echo "alias gpm=\"git push origin master\"" >> $HOME/.bashrc
RUN echo "alias gup=\"git pull --rebase\"" >> $HOME/.bashrc
