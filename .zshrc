

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{red}%b%F{white}'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n@${PWD/#$HOME/~} ${vcs_info_msg_0_} > '

#Cool echo

echo ''

HISTTIMEFORMAT="%F %T "
export PROMPT_COMMAND="echo -n \[\$(date +%H:%M:%S)\]\ "
#start up
cd ~/Work/git/

#cd aliases
alias githome='cd ~/Work/git/'

# Aliases Git
alias g='git'
alias gst='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git pull'
alias gup='git pull --rebase'
alias gp='git push'
alias gd='git diff'
alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gca='git commit -v -a'
alias gca!='git commit -v -a --amend'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gcm='git checkout master'
alias gr='git remote'
alias grv='git remote -v'
alias grmv='git remote rename'
alias grrm='git remote remove'
alias grset='git remote set-url'
alias grup='git remote update'
alias grbi='git rebase -i'
alias grbc='git rebase --continue'
alias grba='git rebase --abort'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcl='git config --list'
alias gcp='git cherry-pick'
alias glg='git log --stat --max-count=10'
alias glgg='git log --graph --max-count=10'
alias glgga='git log --graph --decorate --all'
alias glo='git log --oneline --decorate --color'
alias glog='git log --oneline --decorate --color --graph'
alias gss='git status -s'
alias ga='git add'
alias gm='git merge'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias gclean='git reset --hard && git clean -dfx'
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'

#remove the gf alias
#alias gf='git ls-files | grep'

alias gpoat='git push origin --all && git push origin --tags'
alias gmt='git mergetool --no-prompt'

alias gg='git gui citool'
alias gga='git gui citool --amend'
alias gk='gitk --all --branches'

alias gsts='git stash show --text'
alias gsta='git stash'
alias gstp='git stash pop'
alias gstd='git stash drop'


#Terraform
alias tf='terraform'
alias tfp='terraform plan'
alias tfa='terraform apply'
alias tfi='terraform init'
