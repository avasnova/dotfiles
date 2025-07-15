DOTFILES="${DOTFILES:-$HOME/repositories/dotfiles}"
[[ -f "$DOTFILES/zsh/.aliases" ]] && source "$DOTFILES/zsh/.aliases"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

export JAVA_HOME=/usr/lib/jvm/default
export PATH=$PATH:$JAVA_HOME/bin

source $ZSH/oh-my-zsh.sh
source $DOTFILES/aliases
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
extract () {
    if [ ! -f "$1" ]
    then
        echo "'$1' does not exist."
        return 1
    fi
    case "$1" in
        (*.tar.bz2) tar xvjf "$1" ;;
        (*.tar.xz) tar xvJf "$1" ;;
        (*.tar.gz) tar xvzf "$1" ;;
        (*.bz2) bunzip2 "$1" ;;
        (*.rar) rar x "$1" ;;
        (*.gz) gunzip "$1" ;;
        (*.tar) tar xvf "$1" ;;
        (*.tbz2) tar xvjf "$1" ;;
        (*.tgz) tar xvzf "$1" ;;
        (*.zip) unzip "$1" ;;
        (*.Z) uncompress "$1" ;;
        (*.xz) xz -d "$1" ;;
        (*.7z) 7z x "$1" ;;
        (*.a) ar x "$1" ;;
        (*) echo "Unable to extract '$1'." ;;
    esac
}
