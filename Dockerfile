# version 0.1
FROM ubuntu:14.04
MAINTAINER ssikyou "ssikyou@gmail.com"
ENV REFRESHED_AT 2017-1-11

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
COPY sources-trusty.aliyun /etc/apt/sources.list

RUN apt-get update && apt-get install -y --no-install-recommends \
	vim \
	ctags \
	cscope \
	vim-gnome \
	bash-completion \
    git \
    tree \
&& rm -rf /var/lib/apt/lists/*

COPY bashrc /root/.bashrc
COPY vim/generatecscope /bin
COPY vim/vimrc /etc/vim/vimrc.local
COPY vim/plugin/* /usr/share/vim/vim74/plugin/

RUN git config --global user.name "Cong Chen"
RUN git config --global user.email ssikyou@gmail.com
RUN git config --global alias.st status
