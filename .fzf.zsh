# Setup fzf
# ---------
if [[ ! "$PATH" == */home/costel/.vim/plugged/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/costel/.vim/plugged/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/costel/.vim/plugged/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/costel/.vim/plugged/fzf/shell/key-bindings.zsh"
