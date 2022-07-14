code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
alias stree='open -a SourceTree'

# for go
export GOROOT=/usr/local/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# k8s
alias ksh="kubectl exec -it $1 $2"
alias kdp="kubectl describe pod $1"
alias kgi="kubectl get ingress $1"
alias kgpv="kubectl get pv $1"
alias k="kubectl"
alias kcx="kubectx"

alias grep='GREP_COLOR="04;07;$(( $RANDOM % 7 + 31 ))" /usr/bin/grep --color=always $@'
alias gcl="gitlab-ci-linter --personal-access-token xxx"