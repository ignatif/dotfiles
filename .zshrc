export ZSH="/Users/digital/.oh-my-zsh"
export ZSH_DISABLE_COMPFIX=true
export UPDATE_ZSH_DAYS=15
DISABLE_UPDATE_PROMPT="true"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

plugins=(git)
alias vim="nvim"

# tabtab
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

# nvm (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
