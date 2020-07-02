# Configuration files for Vim, Bash, Zsh and others

## Disclaimer
This project is very raw, and held together with duct tape. Read the code carefully, and use at your own risk.

## Prerequesites
This installation assumes you have installed git, fd (fd-find)

## Installation

```
git clone --bare https://github.com/costeldr/.dotfiles.git $HOME/.dotfiles.git &&
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME' &&
dotfiles checkout
```
