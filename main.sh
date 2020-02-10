#!/usr/bin/env bash

log() {
    echo "`date "+%Y-%m-%d %H:%M:%S"` INFO -- $@"
}

source git.sh
log "git done"

# 大小写提示
echo "set completion-ignore-case on" >> .inputrc

# vim配置
cat vi.conf>> ~/.vimrc
log "vi done"

# java配置
echo 'JAVA_HOME=/home/lqx/jdk1.8.0_91
CLASSPATH=$JAVA_HOME/lib
PATH=$PATH:$JAVA_HOME/bin:~/bin
export PATH JAVA_HOME CLASSPATH' >> ~/.profile

source ~/.bashrc