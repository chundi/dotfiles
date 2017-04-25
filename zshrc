# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
# ZSH_THEME="zdj"
# ZSH_THEME="agnoster"
# ZSH_THEME="sorin"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
plugins=(git brew autojump osx themes virtualenv)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=zh_CN.UTF-8

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

export DEFAULT_USER="Adi"
export VIRTUAL_ENV_DISABLE_PROMPT="true"
export thrift_stage="beta"
source ~/env/bin/activate.zsh
# source ~/.oh-my-zsh/plugins/vi-mode/vi-mode.plugin.zsh
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

alias vi='vim'
alias iv='vim'
alias st='git status'
alias df='git diff'
alias ad='git add'
alias ci='git commit -m'
alias ck='git checkout'
alias br='git branch'
alias push='git push'
alias pull='git pull'
alias fetch='git fetch'
alias merge='git merge'
alias log="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias q='exit'
alias :q='exit'
alias pdf='termpdf'
alias ls='ls -G'
alias ll='ls -l -G'
alias la='ls -al -G'
alias grep='ggrep'
alias cls='clear'
alias subl=\''/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'\'
alias hexo='~/node_modules/hexo-cli/bin/hexo'

alias adi='ssh adi@127.0.0.1 -p 2223'
#alias tunnel='ssh -CfNg -D 127.0.0.1:8017'
alias python3='~/env3/bin/python'
alias ipython3='~/env3/bin/ipython3'
alias pip3='~/env3/bin/pip'
alias pipes='pipes.sh -p 5 -r 20000'
alias -s html=subl
#alias -s py=vi
alias -s h=vi
alias -s c=vi
alias -s cpp=vi
alias -s log=less
alias -s txt=subl
#alias npm="npm --registry=https://registry.npm.taobao.org \
#        --cache=$HOME/.npm/.cache/cnpm \
#        --disturl=https://npm.taobao.org/dist \
#        --userconfig=$HOME/.cnpmrc"

#function powerline_precmd() {
#    PS1="$(~/bin/powerline-shell/powerline-shell.py $? --shell zsh 2> /dev/null)"
#}
#
#function install_powerline_precmd() {
#  for s in "${precmd_functions[@]}"; do
#    if [ "$s" = "powerline_precmd" ]; then
#      return
#    fi
#  done
#  precmd_functions+=(powerline_precmd)
#}
#
#if [ "$TERM" != "linux" ]; then
#    install_powerline_precmd
#fi
#
#export TMUX_POWERLINE_DIR_LIB=~/bin/tmux-powerline/lib/
#PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

eval $(/usr/libexec/path_helper -s)
