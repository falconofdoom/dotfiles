echo "Installing tools for $SHELL_ENV"

# TODO Add feature toggles here for installing tools depending on SHELL_ENV("bash" or "zsh")


# sudo apt-get install fzf
# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Installation instructions here: https://github.com/chubin/cheat.sh
# [ -f ~/.fzf.bash ] && . ~/.bash.d/cht.sh

# install tmux, subl, git-gui, gitk, java, maven, gradle, docker, teamocil

# install lazydocker, httpie, 


# Install TPM if it doesn't exist
! [ -d ~/.tmux/plugins/tpm ] && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


# Just to make this return successfully because installing TPM doesn't execute if it's already present
echo "Finished sourcing .tool"
