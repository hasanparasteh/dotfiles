# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
	git
    brew
    npm
    rust
    sudo
    zsh-autosuggestions
    copybuffer
)

source $ZSH/oh-my-zsh.sh


# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='nvim'
fi

# Aliases
alias px="proxychains4 -f /etc/proxychains.conf"
alias cdC="cd ~/Codes"
alias cdS="cd ~/Codes/Saraf"

function startProxy(){
    currentWorkingDir=$(pwd)
    cd ~/Desktop
    ./proxy.command
    cd $currentWorkingDir
}

function stopProxy(){
    killall ssh
}

# VIM MODE
bindkey -v

# Export Path
export PNPM_HOME="/Users/hp/Library/pnpm"
export PATH="/Users/hp/Codes/vcpkg:/usr/local/opt/curl/bin:/Users/hp/.local/bin:/Users/hp/.deno/bin:$PNPM_HOME:$PATH"

# Jetbrain Crack
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/php@8.1/bin:$PATH"
export PATH="/usr/local/opt/php@8.1/sbin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
