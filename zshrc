# Load Antigen
source ~/.antigen.zsh

# Load various lib files
antigen bundle robbyrussell/oh-my-zsh lib/

#
# Antigen Theme
#

antigen theme jdavis/zsh-files themes/jdavis

#
# Antigen Bundles
#

antigen bundle git
#antigen bundle tmuxinator
antigen bundle zsh-users/zsh-syntax-highlighting
#antigen bundle rupa/z

# For SSH, starting ssh-agent is annoying
antigen bundle ssh-agent

# Node Plugins
antigen bundle coffee
antigen bundle node
antigen bundle npm

# Python Plugins
#antigen bundle pip
#antigen bundle python
#antigen bundle virtualenv

# OS specific plugins
if [[ $CURRENT_OS == 'OS X' ]]; then
    antigen bundle brew
    antigen bundle brew-cask
    antigen bundle gem
    antigen bundle osx
elif [[ $CURRENT_OS == 'Linux' ]]; then
    # None so far...

    if [[ $DISTRO == 'CentOS' ]]; then
        antigen bundle centos
    fi
elif [[ $CURRENT_OS == 'Cygwin' ]]; then
    antigen bundle cygwin
fi

# antigen bundle jdavis/zsh-files

# Secret info
# antigen bundle git@github.com:jdavis/secret.git


export WORKON_HOME=~/.envs
source /usr/local/bin/virtualenvwrapper.sh

export HOMEBREW_GITHUB_API_TOKEN=d28810e18ac64db5b4fe79cd75614567d702475c

alias updatedb=/usr/libexec/locate.updatedb
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"
