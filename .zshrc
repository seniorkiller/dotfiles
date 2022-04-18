
#alias's
 alias ls='lsd -l'
 alias vim='nvim'
 alias sw='swallow'
 alias pc='pacman'
 alias spc='sudo pacman'
 alias pcu='sudo pacman -Syu'
 alias pci='sudo pacman -S'
 alias pcr='sudo pacman -R'
 alias cavv='cava -p cavaconfig'
 alias polyshape='.config/polybar/shapes/launch.sh'
 alias stes='speedtest'
 alias irssi='irssi --home=~/.config/irssi/'
 alias :q='exit'
 alias ..='cd ..'
 alias .git='cd $HOME/.git'
 alias .config='cd $HOME/.config'

autoload -U colors && colors


# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/.zsh_hist
HISTSIZE=1000
SAVEHIST=300
bindkey -v
# End of lines configured by zsh-newuser-install

autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
#coloring?
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
#zmodload zsh/complist
#compinit
_comp_options+=(globdots)		# Include hidden files.


# Fix backspace bug when switching modes
bindkey "^?" backward-delete-char



autoload -U promptinit; promptinit
  prompt spaceship
SPACESHIP_DIR_PREFIX=""
SPACESHIP_DIR_COLOR="blue"
SPACESHIP_PROMPT_ORDER=(
  time vi_mode user dir host git exec_time line_sep jobs exit_code char         
)

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_CHAR_SYMBOL=❯
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_HG_SHOW=false

SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELM_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DOCKER_CONTEXT_SHOW=false
SPACESHIP_AWS_SHOW=false
SPACESHIP_CONDA_SHOW=false
SPACESHIP_VENV_SHOW=false
SPACESHIP_PYENV_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false

SPACESHIP_VI_MODE_SHOW=true
eval spaceship_vi_mode_enable
SPACESHIP_VI_MODE_COLOR=cyan

SPACESHIP_JOBS_SHOW=false

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.git/.dotbare/dotbare.plugin.zsh
n ()
{
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi
    NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    nnn
    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}
