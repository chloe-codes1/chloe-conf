# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Go path
export GOPATH="~/workspace/go"

# vscode path
export VSCODEPATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# path
export PATH="$GOPATH:$PATH:$VSCODEPATH"

# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"

# Terraform path
export PATH="/usr/local/opt/terraform@0.12/bin:$PATH"

# Java home
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_271.jdk/Contents/Home
export JAVA_11_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.12.jdk/Contents/Home
export JAVA_HOME=`/usr/libexec/java_home -v 17`

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Lima docker host
# export DOCKER_HOST=$(limactl list docker --format 'unix://{{.Dir}}/sock/docker.sock')

# docker host
# eval $(docker-machine env default)

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  fzf
  fasd
  asdf
  tmux
  bundler
  dotenv
  zsh-syntax-highlighting
  zsh-autosuggestions
)

# direnv
eval "$(direnv hook zsh)"

# oh-my-zsh
ZSH_DISABLE_COMPFIX="true"

source $ZSH/oh-my-zsh.sh

# java alias
alias java8="export JAVA_HOME=$JAVA_8_HOME"
alias java11="export JAVA_HOME=$JAVA_11_HOME"

# terraform alias
alias tf=terraform

# python alias
alias python="python3"
alias pip="python3 -m pip"

# kubectl alias
alias k="kubectl"

# minikube alias
alias mini="minikube"

# goland alias
alias goland='/usr/local/bin/goland'

# IntelliJ alias
alias idea='/usr/local/bin/idea'

# sublime alias
alias subl="/usr/local/bin/subl"

# bat alias
alias cat="bat"

# neovim alias
alias vim="nvim"
alias vi="nvim"
alias vimdiff="nvim -d"
export EDITOR=/usr/local/bin/nvim

# execute get_ready_to_work & get_off_work alias
alias gotowork="sh ~/covert/chloe-conf/mac/get_ready_to_work.sh"
alias getoffwork="sh ~/covert/chloe-conf/mac/get_off_work.sh"

# git alias
alias git-switch-pull-master="git switch master && git pull origin master"
alias git-switch-pull-main="git switch main && git pull origin main"

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
autoload -U promptinit; promptinit
