PATH=$HOME/dotfiles/bin

PATH=./bin:$PATH

PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

export EDITOR='vim -f'

# datomic
export JAVA_HOME="$(/usr/libexec/java_home -v 1.7)"
#node libraries picked up via brew
export NODE_PATH=/usr/local/lib/node_modules

#locale settings need for octopress
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

CONFIGURE_OPTS=--with-openssl-dir=`brew --prefix openssl`

# Link Homebrew casks in `/Applications` rather than `~/Applications`
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# autojump support
[[ -f `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# tmuxinator support
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Macvim does not source .zshrc but .zshenv so i have include the rvm scripts here

# Rvm support
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# chruby support
source /usr/local/opt/chruby/share/chruby/chruby.sh

# use the rubies from rvm
# RUBIES=(~/.rvm/rubies/*)

# change automatically ruby implementation
source /usr/local/opt/chruby/share/chruby/auto.sh
chruby ruby-2.1.2
