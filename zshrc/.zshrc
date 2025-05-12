# If you want to use this config on a new PC add the following command into the .zshrc file on your new machine (without the "#"):
# source <path_to_this_file>

# Azure Devop setup
export GONOPROXY='ssh.dev.azure.com,dev.azure.com'
export GOPRIVATE=ssh.dev.azure.com,dev.azure.com,dev.azure.com/schwarzit
export GOBIN=${GOBIN:-$(go env GOPATH)/bin}

/usr/bin/ssh-add --apple-use-keychain ~/.ssh/id_rsa

clear

# Initialize the completion system (for kubectl)
autoload -Uz compinit && compinit
source <(kubectl completion zsh)

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
alias lS="ls -a -G"
alias lsa="ls -a -G"
alias lsl="ls -l -G"
alias lsal="ls -a -l -G"
alias lsL="ls -a -l -G"
alias clr="clear"
alias kube="kubectl"
alias kubeprod="export KUBECONFIG=/Users/rommler/.kube/config_prod; echo 'Kube config switched to prod...'"
alias kubeq="export KUBECONFIG=/Users/rommler/.kube/config_qa; echo 'Kube config switched to qa...'"

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

# Add the Go stuff so your own packages are working 
GOROOT=$(go env GOROOT)
PATH=$PATH:$GOROOT/bin

GOPATH=$(go env GOPATH)
PATH=$PATH:$GOPATH/bin