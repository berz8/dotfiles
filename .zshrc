# zmodload zsh/zprof
source ~/.antidote/antidote.zsh

export NVM_LAZY_LOAD=true

antidote load

fpath=(~/zsh_prompt $fpath)
autoload -Uz prompt_purification_setup; prompt_purification_setup

setopt EXTENDED_HISTORY       # Record timestamp in history.

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git zsh-nvm)

# User configuration

#
# aliases
# export PATH="/usr/local/opt/node@18/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/berz/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# bun completions
# [ -s "/Users/berz/.bun/_bun" ] && source "/Users/berz/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=$PATH:$(go env GOPATH)/bin


# Load Angular CLI autocompletion.
# source <(ng completion script)


# Aliases
alias fd="bash /Users/berz/scripts/fzf-tmux-session.sh"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias vim="nvim"
alias v="nvim"
alias gs="git status"
alias gd="git diff"

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Speed up completion init
autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

# zprof
