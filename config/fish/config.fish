# optional plugins
# . path/to/auto_activation.fish
# . path/to/global_requirements.fish
# . path/to/projects.fish

set fish_path $HOME/.oh-my-fish
. $fish_path/oh-my-fish.fish

eval (python3 -m virtualfish)
eval (python3 -m virtualfish auto_activation)

# source jupyter.fish
# Fish git prompt
# set __fish_git_prompt_showcleanstate 'yes'
# set __fish_git_prompt_showdirtystate 'yes'
# set __fish_git_prompt_showstashstate 'yes'
# set __fish_git_prompt_showupstream 'yes'
# set __fish_git_prompt_color_branch yellow
# set __fish_git_prompt_color_cleanstate green
# set __fish_git_prompt_color_dirtystate red


# # Status Chars
# set __fish_git_prompt_char_cleanstate '✔'
# set __fish_git_prompt_char_dirtystate '☓'
# set __fish_git_prompt_char_stagedstate '→'
# set __fish_git_prompt_char_stashstate '↩'
# set __fish_git_prompt_char_upstream_ahead '↑'
# set __fish_git_prompt_char_upstream_behind '↓'

# function fish_prompt
#   set last_status $status

#   if set -q VIRTUAL_ENV
#     echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
#   end

#   set_color $fish_color_cwd
#   printf '%s' (prompt_pwd)
#   set_color normal

#   printf '%s ' (__fish_git_prompt)

#   set_color normal

# end

# emacs ansi-term support
if test -n "$EMACS"
  set -x TERM eterm-color
end


. ~/.config/fish/fishmarks/marks.fish

function cabal_prompt
    # from https://gist.github.com/honza/11264269
    if [-e "cabal.sandbox.config"]
        printf '(cabal sandbox)'
    end
end

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
Theme "es"
Theme "bobthefish"

Plugin "brew"
Plugin "pyenv"

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
alias de "eval (docker-machine env default)"
alias pm "python manage.py"
alias pc "open -a /Applications/PyCharm\ CE.app"
alias t "tmux"

set -g -x SLACK_CHANNEL data

. $XDG_CONFIG_HOME/fish/keys.fish

__fish_complete_django django-admin.py
__fish_complete_django manage.py


test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
