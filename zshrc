# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
# ZSH_THEME="zdj"
# ZSH_THEME="agnoster"
ZSH_THEME="sorin"

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
plugins=(vi-mode git brew autojump osx themes virtualenv)

source $ZSH/oh-my-zsh.sh

# User configuration


echo "Checking Golang Environment"
if command -v go >/dev/null 2>&1; then
    GOVERSION=$(go version | awk '{print $3}' | cut -c 3-)
    export GOROOT=$(brew --prefix)/Cellar/go/$GOVERSION/libexec
    export GOPATH=/Users/chundi/workspace/go
    export GOBIN=$GOPATH/bin
fi

echo "Checking Java Environment"
if command -v java >/dev/null 2>&1; then
    export JAVA_HOME=`/usr/libexec/java_home`
    export PATH="$JAVA_HOME/bin:$PATH"
fi

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

# source ~/.oh-my-zsh/plugins/vi-mode/vi-mode.plugin.zsh
echo "Loading Autojump"
source ~/.oh-my-zsh/plugins/vi-mode/vi-mode.plugin.zsh
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh


echo "Loading Env Variables"
export DEFAULT_USER="Adi"
export VIRTUAL_ENV_DISABLE_PROMPT="true"
export thrift_stage="beta"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"
export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"
export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"
export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"
# export PYENV_ROOT="$HOME/.pyenv"
 # export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:/Users/chundi/.bin:$PATH:$GOBIN"
export PATH="/usr/local/opt/qt/bin:$PATH"
export PATH="/usr/local/Cellar/pyqt/5.9.1:$PATH"
export PATH="~/.pyenv/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/.cellar/hbase/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"

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
alias sed='gsed'
alias cls='clear'
alias subl=\''/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'\'
#alias hexo='~/node_modules/hexo-cli/bin/hexo'
alias gotag='gotags -tag-relative=true -R=true -sort=true -f="tags" -fields=+l .'
alias passnew='date +%s | shasum -a 256 | base64 | head -c 64 ; echo'
alias newpass='openssl rand -base64'
alias ptag='ctags -R --languages=Python --python-kinds=-i'

alias tunnel='ssh -CfNg -D 127.0.0.1:8017 adi@45.76.75.164'
alias adi='ssh adi@192.168.10.104'
#alias ali='ssh songchundi@47.93.235.243'
alias ali='ssh web@47.98.115.175'
#alias python3='~/.env3/bin/python'
#alias ipython3='~/.env3/bin/ipython3'
#alias pip3='~/.env3/bin/pip'
#alias orange='~/.env3/bin/orange-canvas'
alias vl='ssh adi@45.76.75.164'
alias pipes='pipes.sh -p 5 -r 20000'
alias -s html=subl
#alias -s py=vi
alias -s h=vi
alias -s c=vi
alias -s cpp=vi
alias -s log=less
alias -s txt=subl
alias c=cd
alias npm="npm --registry=https://registry.npm.taobao.org \
        --cache=$HOME/.npm/.cache/cnpm \
        --disturl=https://npm.taobao.org/dist \
        --userconfig=$HOME/.cnpmrc"
alias online='ssh qudeco@101.37.145.57'
export dev='47.94.0.240'
export online='101.37.145.57'

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

#eval $(/usr/libexec/path_helper -s)

echo "Loading Pyenv"

eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
#source ~/.env3/bin/activate
alias pyenvinstall='CFLAGS="-I$(brew --prefix openssl)/include" LDFLAGS="-L$(brew --prefix openssl)/lib" pyenv install'
eval "$(pyenv virtualenv-init -)"

export DB_HOST='127.0.0.1'
export DB_PORT='3306'
export DB_USER='dev'
export DB_PASSWD='a'
export DB_NAME='qudeco'
export APP_DEBUG='true'
export APP_ENV='dev'
export WX_OFFICIAL_ID='wxb1b14aeb4709e05c'
export WX_OFFICIAL_SECRET='1aeaaa11c6e4ff10d29bdd21cab7342e'
export UPLOAD_PREFIX='http://47.94.0.240/'

eval $(/usr/libexec/path_helper -s)
echo "🍺"
