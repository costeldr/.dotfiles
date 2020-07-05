# Configuration files for Vim, Bash, Zsh and others

## Disclaimer
This project is very raw, and held together with duct tape. Read the code carefully, and use at your own risk.

## Prerequesites
This installation assumes you have installed **git, curl, fd (fd-find)
All the dotfiles that are already present on your system have been deleted of moved to another place.

## Installation

```
git clone --bare https://github.com/costeldr/.dotfiles $HOME/.dotfiles &&
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
Once done, run:
```
dotfiles checkout
```
Restart your shell after the process is finished, or run `source ~/.bashrc`

Next time you'll open something through vim or neovim, your plugins should install.
After that restart your shell or source .bashrc again to link fzf with fd, and that should be it.

## Sources/Credits

[Distro Tube - Git Bare Repository - A Better Way To Manage Dotfiles](https://www.youtube.com/watch?v=tBoLDpTWVOM)

[How to manage your dotfiles with git](https://medium.com/toutsbrasil/how-to-manage-your-dotfiles-with-git-f7aeed8adf8b)
