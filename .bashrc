code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

alias stree='open -a SourceTree'

# homebrew
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/alicankustemur/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# go
#export GOPATH=$HOME/go
#export GOROOT="/opt/homebrew/opt/go/libexec"
#export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
#[[ -s "/Users/alicankustemur/.gvm/scripts/gvm" ]] && source "/Users/alicankustemur/.gvm/scripts/gvm"

# krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# kubectl aliases
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases

# custom aliases
[ -f ~/.custom_aliases ] && source ~/.custom_aliases

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

export PATH="/usr/local/bin:$PATH"