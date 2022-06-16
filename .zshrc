source ~/.exports
source ~/.aliases
source ~/.functions

# Enable Powerlevel10k instant prompt (allows you to type before all plugins have loaded)
# Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

plugins=(git zsh-autosuggestions)

# oh-my-zsh
source $ZSH/oh-my-zsh.sh
source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable aws-cli autoprompt (https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-prompting.html)
aws_cli_auto_prompt=on

# Enable kubctl autocomplete
source <(kubectl completion zsh)
