FROM crystallang/crystal

RUN echo "alias gss=\"git status -s\"" >> $HOME/.bashrc
RUN echo "alias gpm=\"git push origin master\"" >> $HOME/.bashrc
RUN echo "alias gup=\"git pull --rebase\"" >> $HOME/.bashrc



