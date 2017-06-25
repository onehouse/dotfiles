alias g='git'
alias gote='git remote'
alias gach='git branch -a'
alias gadd='git add'
alias gs='git status'
alias gl='git log'
alias glop='git log -p'
alias glog='git log --pretty=format:"%C(yellow)%h%C(reset) %C(blue)%ci%C(reset) %s %C(blue)[%cn]%C(reset)"'
alias gush='git push'
alias gull='git pull'
alias gech='git fetch'
alias gone='git clone'
alias gout='git checkout'
alias goub='git checkout -b'
alias gaco='git add -A && git commit -m'
alias gac='git add -A && git commit'
alias gc='git commit'
gend() {
  stage_all_if_none_staged
  git commit --amend --no-edit
}
alias gitm='git commit -m'
alias gset='git reset'
alias gseh='git reset head^1'
gsho() {
  if [ -z "$1" ]; then
    sha=$(git rev-parse HEAD)
  else
    sha="$1"
  fi
  git show $sha
}
alias gase='git rebase'
gasi() {
  if [ -z "$1" ]; then
    number='5'
  else
    number="$1"
  fi
  git rebase -i head~$number
}
alias gasc='git rebase --continue'
stage_all_if_none_staged() {
  git status | grep -q 'Changes to be committed'
  if [[ $? -eq 1 ]] ; then
    git add .
  fi
}
gwip() {
  stage_all_if_none_staged
  if [ -z "$1" ]; then
    message='wip'
  else
    message="wip: $1"
  fi
  git commit -m $message
}
alias gash='git stash -u'
alias gpop='git stash pop'
alias giff='git diff'
alias gifs='dit diff --staged'
alias gerg='git merge'
alias gref='git reflog'
