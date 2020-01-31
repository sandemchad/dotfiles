if [ -f ~/.git-completion.bash ]; then . ~/.git-completion.bash; fi

eval "$(hub alias -s)"
test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash
# source $(which assume-role)
source /usr/local/etc/bash_completion
source ~/.git-prompt.sh
source ~/dotfiles/bash/env.bash
source ~/dotfiles/bash/utils.bash
source ~/dotfiles/bash/aws.bash
source ~/dotfiles/bash/git.bash
source ~/dotfiles/bash/prompt.bash
source ~/dotfiles/bash/sp.bash

export HISTSIZE=1000000
export HISTFILESIZE=1000000
export HISTCONTROL=ignorespace:erasedups
export HISTIGNORE="ls:ps:history*"
shopt -s histappend

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby ruby-2.6.3
eval "$(direnv hook bash)"
