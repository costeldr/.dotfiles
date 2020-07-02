# Configuration files for Vim, Bash, Zsh and others

## Disclaimer
This project is very raw, and held together with duct tape. Read the code carefully, and use at your own risk.

## Prerequesites
This installation assumes you have installed git, fd (fd-find)
All the dotfiles that are already present on your system have been deleted of moved to another place.

## Installation

```
git clone --bare https://github.com/costeldr/.dotfiles.git $HOME/.dotfiles.git &&
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME' &&
dotfiles checkout &&
```
Restart your shell after the process is finished, or run `source ~/.bashrc`
