source ~/.antidote/antidote.zsh
export NVM_LAZY_LOAD=true

antidote load

fpath=(~/zsh_prompt $fpath)
autoload -Uz prompt_purification_setup; prompt_purification_setup


# Git aliases
alias ga='git add .'
alias gc='git commit -m'
alias gs='git status'
alias gap='git add -p'
alias vim="nvim"
alias v="nvim"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias kb="xmodmap ~/.Xmodmap"

# pnpm
export PNPM_HOME="/home/berz/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Go
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# fly.io CLI
export FLYCTL_INSTALL="/home/berz/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# Turso
export PATH="/home/berz/.turso:$PATH"


alias fd="bash /home/berz/scripts/fzf-tmux-session.sh"

# Speed up completion init
autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C
