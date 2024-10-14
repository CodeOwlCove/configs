# If you want to use this config on a new PC add the following command into the .zshrc file on your new machine (without the "#"):
# source <path_to_this_file>

# Change the default colors of the terminal
autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%%"

export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# Set vim options to use my own options
export VIMINIT='source ~/gitrepos/configs/vim/.vimrc'

# Print Files (including hidden ones) on terminal startup
ls -a

alias ls="ls -G"
alias clr="clear"
# Created by `pipx` on 2024-10-08 10:04:19
export PATH="$PATH:/Users/rommler/.local/bin"

# Override cd command to always print the files in a directory after changing into it
cd() {
  builtin cd "$@" && ls
}

# Add the cds command (change directory simple) to only cd without printing the files in the new directory
cds() {
  builtin cd "$@"
}


