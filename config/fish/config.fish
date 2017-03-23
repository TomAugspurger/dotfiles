# optional plugins
# . path/to/auto_activation.fish
# . path/to/global_requirements.fish
# . path/to/projects.fish

set fish_path $HOME/.oh-my-fish

python3 -m virtualfish | source
python3 -m virtualfish auto_activation | source

# emacs ansi-term support
if test -n "$EMACS"
  set -x TERM eterm-color
end

. ~/.config/fish/fishmarks/marks.fish

# set PATH /usr/local /usr/local/bin /usr/local/sbin /usr/local/lib $HOME/miniconda3/bin $HOME/bin $HOME/Dropbox/bin $HOME/.cabal/bin /Applications/ghc.app/Contents/bin /Applications/Julia.app/Contents/Resources/julia/bin $HOME/sandbox/go/bin /usr/local/opt/go/libexec/bin $LATEX $PATH
set PATH $HOME/.local/bin /usr/local/texlive/2014basic/bin/universal-darwin $HOME/bin $PATH

set -g EDITOR /usr/local/bin/nvim
set -g HOMEBREW_EDITOR /usr/local/bin/vim
set -g XDG_CONFIG_HOME $HOME/.config
set -g -x LESS -R

# Python
set -g VIRTUALFISH_HOME $HOME/Envs
set -g VIRTUALFISH_COMPAT_ALIASES
set -g WORKON_HOME $HOME/Envs
set -g TRN /Volumes/SHRDATA/Transfer/z_Mittera_Data

# Haskell
# downloaded from http://ghcformacosx.github.io
# symlink /Applicatoins/ghc.app to the latest version (7.8.3 as of now)
#
alias ctr "ctags -R  --exclude=.git --exclude=build/ --exclude=dist/ ."
alias ipyhton "ipython"
alias ipy "ipython"
alias vi "nvim"
alias nb "jupyter notebook"
alias ipk "python -m ipykernel install --user"

# alias git "git"
alias nt "nosetests"
alias pms "python manage.py shell"
alias pmt "python manage.py test"
alias pmdb "python manage.py db"
alias psi "python setup.py install"
alias psd "python setup.py develop"
alias pyp "python -m pip"
alias pm "python manage.py"
alias pc "open -a /Applications/PyCharm\ CE.app"
alias t "tmux"

. $XDG_CONFIG_HOME/fish/keys.fish

__fish_complete_django django-admin.py
__fish_complete_django manage.py


test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
