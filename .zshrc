# Path Configuration

#export PATH="/Users/karan/.local/share/solana/install/active_release/bin:$PATH"
export PATH="/Users/karan/.local/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm@12/bin:$PATH"

# Homebrew's Ruby, if installed
#if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
#  export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
#  export PATH="$(gem environment gemdir)/bin:$PATH"
#fi

# C Include Path for FFI
#export C_INCLUDE_PATH="$(xcrun --show-sdk-path)/usr/include/ffi"

# GHCup Environment
#[ -f "/Users/karan/.ghcup/env" ] && source "/Users/karan/.ghcup/env" # ghcup-env


# ZSH Syntax Highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ZSH Auto Suggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh


# Function to make a directory and immediately change into it
mkdcd() {
    if [ $# -eq 0 ]; then
        echo "No directory name provided"
        return 1
    fi

    mkdir -p "$1" && cd "$1"
}

# Aliases
alias ls="lsd -tra" # t sorts output based on time, r is reverse flag and a is to show all files
# TMUX aliases
alias tm='tmux'
alias tma='tmux attach-session -t'
alias tmls='tmux ls'
alias tmn='tmux new -s'
alias tmd='tmux detach'
alias tmt='tmux kill-session -t'
alias tmrn='tmux rename-session -t'

# Navigation aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias c='clear'
alias h='history'
alias j='jobs -l'
alias p='pwd'
alias v='vim'
alias o='fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs open'

# VS code aliases
alias code.='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code .'
alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'

# local colo='%F{yellow}%~%f'
# PROMPT="╭─${colo} ─────
# ╰─%F{yellow}% $ "
#
#
# Prompt
# ======
setopt prompt_subst
autoload colors; colors;


local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$fg[blue]%}%~%{$reset_color%}'

local git_branch='$(git_prompt_info)%{$reset_color%}'

RPROMPT="[%{$fg[green]%}%@%{$reset_color%}] ${return_code}%{$reset_color%}"
PROMPT="┌─[${current_dir}]${git_branch}
└─%B%b "


ZSH_THEME_GIT_PROMPT_SUFFIX=""

# Git Prompt
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "—[%{$fg[yellow]%}${ref#refs/heads/}%{$reset_color%}]"
}


fpath=($fpath ~/.zsh/completion)


tv(){
    if [ $# -eq 0 ]; then
        echo "No file name provided"
        return 1
    fi

    touch "$1" && vim "$1"
}
