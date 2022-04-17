
export PATH="$HOME/.local/bin:$HOME/.script:$PATH"
export VISUAL='nvim'
export EDITOR='nvim'
export TERMINAL='kitty'

export NNN_FIFO=/tmp/nnn.fifo
export NNN_PLUG='e:suedit;i:imgview;y:nmount;p:preview-tui;P:fzplug;o:fzopen;l:launch;d:dragdrop;w:!setbg $nnn*;t:testing/test'


export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state


#  Partially supported XDG-BASED-DIR

export DOTBARE_DIR="$HOME/.config/dotbare"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

export GVIMINIT='let $MYGVIMRC = !has("nvim") ? "$XDG_CONFIG_HOME/vim/gvimrc" : "$XDG_CONFIG_HOME/nvim/init.gvim" | so $MYGVIMRC'
export VIMINIT='let $MYVIMRC = !has("nvim") ? "$XDG_CONFIG_HOME/vim/vimrc" : "$XDG_CONFIG_HOME/nvim/init.vim" | so $MYVIMRC'
