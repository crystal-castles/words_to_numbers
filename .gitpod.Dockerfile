FROM crystallang/crystal

RUN apt-get update
RUN apt-get install -y zsh
RUN chsh -s $(which zsh)

RUN git clone https://github.com/jasonm23/.zsh.d.git 
