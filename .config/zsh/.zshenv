
export PATH="$HOME/.local/bin:$HOME/.script:$PATH"
export VISUAL='nvim'
export EDITOR='nvim'
export TERMINAL='kitty'

export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass

export NNN_FIFO=/tmp/nnn.fifo
export NNN_PLUG='e:suedit;i:imgview;y:nmount;p:preview-tui;P:fzplug;o:fzopen;l:launch;d:dragdrop;w:!setbg $nnn*;t:testing/test'
export NNN_TMPFILE="/tmp/.lastd"
export NNN_SEL='/tmp/.sel'


# export XDG_CONFIG_HOME=$HOME/.config
# export XDG_CACHE_HOME=$HOME/.cache
# export XDG_DATA_HOME=$HOME/.local/share
# export XDG_STATE_HOME=$HOME/.local/state


#  Partially supported XDG-BASED-DIR

export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
export HISTFILE="$XDG_STATE_HOME"/zsh/history
export DOTBARE_DIR="$HOME/.config/dotbare"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

export GVIMINIT='let $MYGVIMRC = !has("nvim") ? "$XDG_CONFIG_HOME/vim/gvimrc" : "$XDG_CONFIG_HOME/nvim/init.gvim" | so $MYGVIMRC'
export VIMINIT='let $MYVIMRC = !has("nvim") ? "$XDG_CONFIG_HOME/vim/vimrc" : "$XDG_CONFIG_HOME/nvim/init.vim" | so $MYVIMRC'
