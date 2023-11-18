# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Customise the Powerlevel9k prompts
POWERLEVEL9K_SHORTEN_DIR_LENGTH="2"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''

POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=' '
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=' '

POWERLEVEL9K_WHITESPACE_BETWEEN_LEFT_SEGMENTS=''
POWERLEVEL9K_WHITESPACE_BETWEEN_RIGHT_SEGMENTS=''
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{#292d35}\u256D\u2500%F{white}"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{#292d35}\u2570%F{043}\uf460%F{043}\uf460%F{white} "
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(anaconda root_indicator dir dir_writable_joined vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time background_jobs_joined time_joined os_icon)

POWERLEVEL9K_PYTHON_ICON="\ue73c"
POWERLEVEL9K_ANACONDA_CONTENT_EXPANSION='${${CONDA_PROMPT_MODIFIER#\(}%\) }'
POWERLEVEL9K_ANACONDA_BACKGROUND="clear"
POWERLEVEL9K_ANACONDA_FOREGROUND="lightcoral"
POWERLEVEL9K_VCS_BACKGROUND="clear"
POWERLEVEL9K_VCS_FOREGROUND="green"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="clear"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="clear"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="yellow"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="yellow"
POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="blue"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="clear"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="red"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="clear"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="red"
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="white"
POWERLEVEL9K_STATUS_OK_BACKGROUND="clear"
POWERLEVEL9K_STATUS_OK_FOREGROUND="green"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="clear"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"
POWERLEVEL9K_TIME_BACKGROUND="clear"
POWERLEVEL9K_TIME_FOREGROUND="cyan"
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'
POWERLEVEL9K_DATE_BACKGROUND="clear"
POWERLEVEL9K_DATE_FOREGROUND="cyan"
POWERLEVEL9K_OS_ICON_BACKGROUND="clear"
POWERLEVEL9K_OS_ICON_FOREGROUND="#EBDCB2"
POWERLEVEL9K_DATE_FORMAT='%D{%d:%m}'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='clear'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='magenta'
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='clear'
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='green'
POWERLEVEL9K_USER_BACKGROUND="clear"

# Load Nerd Fonts with Powerlevel9k theme for Zsh
POWERLEVEL9K_MODE='nerdfont-complete'
source /Users/benminh1201/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

# Set a color for iTerm2 tab title background using rgb values
function title_background_color {
  echo -ne "\033]6;1;bg;red;brightness;$ITERM2_TITLE_BACKGROUND_RED\a"
  echo -ne "\033]6;1;bg;green;brightness;$ITERM2_TITLE_BACKGROUND_GREEN\a"
  echo -ne "\033]6;1;bg;blue;brightness;$ITERM2_TITLE_BACKGROUND_BLUE\a"
}
ITERM2_TITLE_BACKGROUND_RED="18"
ITERM2_TITLE_BACKGROUND_GREEN="26"
ITERM2_TITLE_BACKGROUND_BLUE="33"
title_background_color
# Set iTerm2 tab title text
function title_text {
    echo -ne "\033]0;"$*"\007"
}
title_text ichbinBen

POWERLEVEL9K_MODE='nerdfont-complete'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/benminh1201/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/benminh1201/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/benminh1201/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/benminh1201/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

plugins=(
    	zsh-autosuggestions
	git
	vscode
	zsh-syntax-highlighting
	autoupdate
	fig
	aws
)

export UPDATE_ZSH_DAYS=1

## Add shortcut "Shift + Enter"
bindkey '^[OM' autosuggest-accept

# load zgen
export ZSH="/Users/benminh1201/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

export PATH="/opt/homebrew/bin:$PATH"
source ~/.bash_profile


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc

export PATH="/opt/homebrew/sbin:$PATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
