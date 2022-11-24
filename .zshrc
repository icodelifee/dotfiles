platform='darwin'
unamestr=$(uname)

local=".local"

function set_win_title(){
    echo -ne "\033]0; $USER@${HOST/%$local} : ${PWD/$HOME/~} \007"
}

precmd_functions+=(set_win_title)

## Plugins section: Enable fish style features
# Use syntax highlighting
source /Users/icodelife/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Use autosuggestion
source /Users/icodelife/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Use history substring search
source /Users/icodelife/.oh-my-zsh/custom/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# Use fzf
#source /usr/local/share/fzf/key-bindings.zsh
#source /usr/local/share/fzf/completion.zsh

setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
setopt rcexpandparam                                            # Array expension with parameters
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt autocd                                                   # if only directory path is entered, cd there.
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

ZSH_THEME=cdimascio-lambda
plugins=(git sudo zsh-syntax-highlighting zsh-autosuggestions)

# aliases

# PS
alias psa="ps aux"
alias psg="ps aux | grep "

# Moving around
alias cdb='cd -'
alias cl='clear'

alias ll='ls -alGh'
alias ls='ls -Gh'
alias lsg='ll | grep'

# zsh profile editing
alias ze='nvim ~/.zshrc'
alias zr='source ~/.zshrc'

# Git Aliases
alias gs='git status'
alias gstsh='git stash'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='vim .gitignore'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog='git l'
alias co='git co'
alias gf='git fetch'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
alias gbd='git b -D -w'
alias gdc='git diff --cached -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gpsh='git push -u origin `git rev-parse --abbrev-ref HEAD`'
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'
alias gbg='git bisect good'
alias gbb='git bisect bad'


export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8

eval "$(starship init zsh)"

# path stuff
export PATH="$PATH:$HOME/.pub-cache/bin"
export PATH="/usr/local/bin:$PATH"
export PATH=/opt/homebrew/bin:/usr/local/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/icodelife/.pub-cache/bin:/Users/icodelife/.pub-cache/bin:/Users/icodelife/.pub-cache/bin:/Users/icodelife/.pub-cache/bin:/Users/icodelife/.pub-cache/bin:/Users/icodelife/.pub-cache/bin:/Users/icodelife/.pub-cache/bin:/Users/icodelife/.pub-cache/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/Users/icodelife/fvm/default/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="/Users/icodelife/.local/bin:$PATH"
export PNPM_HOME="/Users/icodelife/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
export GEM_HOME="$HOME/.gem"
export PATH="/Users/icodelife/.gem/ruby/2.6.0/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
alias code='open -a "Visual Studio Code"' # open file or folder in VSCode e.g. code ~/.zshrc

export LC_ALL=en_US.UTF-8

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"
#eval "$(rbenv init -)"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
