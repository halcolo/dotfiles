# Uncomment for debuf with `zprof`
# zmodload zsh/zprof

export DOTFILES_PATH=$HOME/.dotfiles
export DOTLY_PATH="$DOTFILES_PATH/modules/dotly"
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.dotfiles/modules/dotly/modules/zimfw

# ZSH Ops
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FCNTL_LOCK
# setopt autopushd

# Start zim
source ${ZIM_HOME}/init.zsh

# Removing the waiting dots from completion (...). Original: ~/.zim/modules/input/init.zsh
# expand-or-complete-with-redisplay() {
#   zle expand-or-complete
#   zle redisplay
# }

# Async mode for autocompletion
ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_HIGHLIGHT_MAXLENGTH=300

source $DOTFILES_PATH/shell/init.sh

fpath=("$DOTFILES_PATH/shell/zsh/themes" "$DOTFILES_PATH/shell/zsh/completions" $fpath)

autoload -Uz promptinit && promptinit
prompt codelytv

source $DOTFILES_PATH/shell/zsh/key-bindings.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/cest/google-cloud-sdk/path.zsh.inc' ]; then . '/home/cest/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/cest/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/cest/google-cloud-sdk/completion.zsh.inc'; fi
