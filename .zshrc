export PATH=~/Library/Python/3.8/bin:$PATH
export PATH=/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'
bindkey -v

# Lines configured by zsh-newuser-install
setopt autocd extendedglob nomatch notify
unsetopt beep

ZSH_THEME="powerlevel9k/powerlevel9k"

# End of lines configured by zsh-newuser-install
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
