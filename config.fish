if status is-interactive
    set -Ux PYENV_ROOT $HOME/.pyenv
    set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
end

# Load pyenv.
status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source
status is-interactive; and pyenv virtualenv-init - | source

# Custom aliases.
alias l="ls -la"

# source /Users/ethan/.docker/init-fish.sh || true # Added by Docker Desktop

# Set default nvm version.
set -U nvm_default_vesrion 18

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# brew
set --export HOMEBREW_NO_INSTALL_FROM_API 1

alias tf=terraform
alias v=neovim

