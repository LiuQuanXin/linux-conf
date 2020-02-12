#!/usr/bin/env bash

mkdir ~/bin

log() {
    echo "`date "+%Y-%m-%d %H:%M:%S"` INFO -- $@"
}

#source git.sh
#echo 'source ~/bin/bashrc' >> ~/.bashrc
log "git done"

# 大小写提示
echo "set completion-ignore-case on" >> ~/.inputrc

# vim配置
cat vi.conf > ~/.vimrc
log "vi done"

# java配置
#echo 'JAVA_HOME=/home/lqx/jdk1.8.0_91
#CLASSPATH=$JAVA_HOME/lib
#PATH=$PATH:$JAVA_HOME/bin:~/bin
#export PATH JAVA_HOME CLASSPATH' >> ~/.profile

#快捷命令 z 配置
#git clone https://github.com/rupa/z ~/bin/z
echo 'source ~/linux-conf/z.sh' >> ~/.bashrc

source ~/.bashrc
