# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Shortcut for building docker instance alias build="docker-compose build" # Shortcut for standing up font service for local testing alias up="docker-compose up"

# bind gvim to mvim
alias mvim="gvim"

# Git alias
alias co="git checkout"
alias bh="git branch"
alias rmo="git remote"
alias st="git status"
alias pull="git pull"
alias push="git push"
alias fh="git fetch"
alias com="git commit"
alias merge="git merge"
alias lg="git log"
alias gdiff="git diff"

# alias for performance lab diff checking
alias check="diff filtered-edge-boats.bmp ../boats_output/filtered-edge-boats.bmp; \
						diff filtered-emboss-boats.bmp ../boats_output/filtered-emboss-boats.bmp; \
						diff filtered-motionblur-boats.bmp ../boats_output/filtered-motionblur-boats.bmp; \
						diff filtered-gauss-boats.bmp ../boats_output/filtered-gauss-boats.bmp; \
						diff filtered-hline-boats.bmp ../boats_output/filtered-hline-boats.bmp; \
						diff filtered-raised-boats.bmp ../boats_output/filtered-raised-boats.bmp; \
						diff filtered-sharpen-boats.bmp ../boats_output/filtered-sharpen-boats.bmp; \
						diff filtered-edge-blocks-small.bmp ../blocks_output/filtered-edge-blocks-small.bmp; \
						diff filtered-emboss-blocks-small.bmp ../blocks_output/filtered-emboss-blocks-small.bmp; \
						diff filtered-motionblur-blocks-small.bmp ../blocks_output/filtered-motionblur-blocks-small.bmp; \
						diff filtered-gauss-blocks-small.bmp ../blocks_output/filtered-gauss-blocks-small.bmp; \
						diff filtered-hline-blocks-small.bmp ../blocks_output/filtered-hline-blocks-small.bmp; \
						diff filtered-raised-blocks-small.bmp ../blocks_output/filtered-raised-blocks-small.bmp; \
						diff filtered-sharpen-blocks-small.bmp ../blocks_output/filtered-sharpen-blocks-small.bmp"

alias given="./Judge -p ./filter_84 -i boats.bmp; \
						 ./Judge -p ./filter_84 -i blocks-small.bmp"




						
# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
