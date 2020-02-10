#!/usr/bin/env bash

# git配置
git clone https://github.com/markgandolfo/git-bash-completion.git
cp git-bash-completion.git/git-completion.bash ~/.git-completion.bash
echo 'function git_branch {
  branch="`git branch 2>/dev/null | grep "^\*" | sed -e "s/^\*\ //"`"
  if [ "${branch}" != "" ];then
      if [ "${branch}" = "(no branch)" ];then
          branch="(`git rev-parse --short HEAD`...)"
      fi
      echo " ($branch)"
  fi
}' >> ~/.bashrc

echo "export PS1='\u@\h \[\033[01;36m\]\W\[\033[01;32m\]$(git_branch)\[\033[00m\] \$ ' " >>  ~/.bashrc
echo "source ~/.git-completion.bash'"  ~/.bashrc
# git别名
git config --global alias.co checkout
git config --global alias.commit commit
git config --global alias.br branch
git config --global alias.st status
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"





