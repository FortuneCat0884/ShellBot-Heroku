FROM debian:latest
RUN mkdir -p /home/frost && chmod 777 /home/frost
RUN mkdir -p /home/frost/bin
ENV PATH="$PATH:/home/frost/bin"
WORKDIR /home/frost

RUN apt update && apt install -y make python python-pip build-essential curl git wget openssh-client openssh-server tmate patchelf python3 gzip aria2 tar php bash locales-all p7zip figlet unzip brotli megatools
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get -qq -y install nodejs
RUN git clone https://github.com/SuperCosmicBeing/shellbot-workflow-nd -b heroku .repo/ --depth=1
RUN git clone https://github.com/BOTGRAM/shell-bot .source/
RUN cd .source && npm install
RUN curl -sL https://git.io/file-transfer | sh
CMD ["bash"]