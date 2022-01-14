FROM debian:latest
RUN mkdir -p /home/frost && chmod 777 /home/frost
RUN mkdir -p /home/frost/bin
ENV PATH="$PATH:/home/frost/bin"
WORKDIR /home/frost

RUN apt update && apt install -y make python3 python3-pip build-essential curl git wget openssh-client openssh-server tmate patchelf gzip aria2 tar php bash nano vim locales-all p7zip figlet unzip brotli megatools ffmpeg
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get -qq -y install nodejs
RUN git clone https://github.com/SuperCosmicBeing/shellbot-workflow-nd -b heroku .repo/ --depth=1
RUN git clone https://github.com/FortuneCat0884/py.git
RUN pip3 install -r py/requirements.txt
Run mv py/1.py 1.py
Run mv py/2.py 2.py
Run mv py/3.py 3.py
Run rm -rf py
RUN wget https://github.com/iawia002/lux/releases/download/v0.12.0/lux_0.12.0_Linux_64-bit.tar.gz
RUN tar xvf lux_0.12.0_Linux_64-bit.tar.gz
RUN rm -rf lux_0.12.0_Linux_64-bit.tar.gz
RUN mv lux /usr/local/bin
RUN git clone https://github.com/BOTGRAM/shell-bot .source/
RUN cd .source && npm install
RUN curl -sL https://git.io/file-transfer | sh
CMD ["bash"]
