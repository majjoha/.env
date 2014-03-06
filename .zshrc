###############
#     Zsh     #
###############

# Keep colors with tmux
alias tmux="TERM=screen-256color-bce tmux"

# Don't rename my windows in tmux
DISABLE_AUTO_TITLE=true

stty -ixon

# Plugins
plugins=(git ruby osx heroku git-extras gem brew bundler)

# Path to oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh

# Let's source this stuff!
source $ZSH/oh-my-zsh.sh

# Theme
source ~/.env/.majjoha.zsh-theme

# Work with me, git
__git_files () { 
    _wanted files expl 'local files' _files     
}

# Use z
. ~/.env/bin/z.sh

##################
#     Prompt     #
##################

# Apply OSX settings
if [[ $(uname -s) == "Darwin" ]]; then
  source ~/.env/.osx
fi

# Use vim as default editor
export EDITOR="vim"
export VISUAL="vim"

####################
#     Coloring     #
####################

# Enabling coloring in the command line prompt
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

###################
#     Aliases     #
###################

# Add aliases.
if [ -f ~/.env/.aliases ]; then
    source ~/.env/.aliases
fi

#########################
#     Miscellaneous     #
#########################
	
#export PATH=/usr/local/bin:/usr/local/git/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:$PATH:/Users/Mathias/Documents/Kode/BNSub/bin:/Applications/MacVim.app:~/.env/bin

# Install Homebrew Cask applications in /Applications folder.
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export PATH=/usr/local/bin:$PATH
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
export ZENDESK_PORT=4000
chruby ruby-2.1.0
