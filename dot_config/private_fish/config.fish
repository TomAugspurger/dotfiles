alias ipyhton "ipython"
alias ipy "ipython"
alias nb "jupyter notebook"
alias ipk "python -m ipykernel install --user"
alias pt "pytest"
alias python "python3"

# if test -z $TMUX
#     set PATH $PATH /usr/local/texlive/2020/bin/x86_64-darwin
# end

# . "$HOME/.cargo/env"

set PATH $HOME/.local/bin $HOME/mambaforge/bin $PATH

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# if test -f /Users/tom/mambaforge/bin/conda
#     eval /Users/tom/mambaforge/bin/conda "shell.fish" "hook" $argv | source
# end

# if test -f "/Users/tom/mambaforge/etc/fish/conf.d/mamba.fish"
#     source "/Users/tom/mambaforge/etc/fish/conf.d/mamba.fish"
# end
# # <<< conda initialize <<<

fish_add_path $HOME/.cargo/bin
starship init fish | source

