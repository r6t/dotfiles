export ZSH=~/.oh-my-zsh

# POWERLEVEL9K ZSH THEME
# POWERLEVEL9K_MODE='awesome-fontconfig'
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir_writable dir virtualenv vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status ssh root_indicator host)
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
#AWS_DEFAULT_PROFILE=
DEFAULT_USER=ryan
#ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="xiong-chiamiov-plus"

# ZSH SETTINTS
HYPHEN_INSENSITIVE="true"
export UPDATE_ZSH_DAYS=7
# DISABLE_LS_COLORS="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(
  aws
  git
  python
)

export PATH=/var/lib/snapd/snap/bin:$PATH
export PATH=/home/ryan/.local/lib/python3.8/site-packages:$PATH
source $ZSH/oh-my-zsh.sh
# source ~/.fonts/*.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias pip="pip3"
alias p3="python3.7"
