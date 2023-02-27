# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export TERM=xterm-256color

alias gits="git status && git branch -vv"
alias gitt="git log --color --graph --pretty=format:'%Cred%h%Creset-%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --decorate --branches"

ZSH_THEME="powerlevel10k/powerlevel10k"

CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  rails
  ruby
  nvm
  rbenv
  node
  aws
  npm
  docker
  zsh-autosuggestions
  zsh-syntax-highlighting
  fast-syntax-highlighting
#  zsh-autocomplete
)

fpath=(~/.zsh/completion $fpath)
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
autoload -Uz compinit && compinit -i


source $ZSH/oh-my-zsh.sh

export PATH="$PATH:$(yarn global bin)"
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/fpga-toolchain/bin:$PATH"
export PATH="$HOME/.dotnet:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(rbenv init -)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true


# Icicle https://github.com/nishtahir/icicle/
export PATH=/Users/mackieg/.icicle:$PATH
eval "`icicle env`"
