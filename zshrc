# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true" 
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.  plugins=(git zsh-autosuggestions sublime virtualenvwrapper nvm docker)
#
plugins=(git zsh-autosuggestions sublime virtualenvwrapper nvm docker)
# User configuration
export PATH="$PATH:/usr/local/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias dev="cd ~/Desktop/Various_dev_projects"
alias cis197="cd ~/Desktop/Various_dev_projects/cis197TA"
alias bot="cd ~/Desktop/Various_dev_projects/facebook-bot-maker"
alias rtm="cd ~/Desktop/Various_dev_projects/reading-terminal-market"
alias cls="cd ~/Desktop/Various_dev_projects/cls"
alias fb="cd ~/Desktop/Various_dev_projects/flask-base"
alias cis196="cd ~/Desktop/COLLEGE/CIS-196"
alias venvac="source venv/bin/activate"
alias deac="deactivate"
alias gst="git status"
alias ga="git add -u"
alias hlogs="cd ~/Desktop/Various_dev_projects/abhi-bot"
alias herokulogs="heroku logs --tail"
alias zshconfig="vi ~/.zshrc"
alias runserver="python manage.py runserver"
alias recrun="python manage.py recreate_db; python manage.py runserver"
alias hideDesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showDesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias showFiles="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"
alias vimrc="vim ~/.vimrc"
alias vi='/Applications/MacVim.app/Contents/MacOS/Vim'
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias gvi='/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias server='python -m SimpleHTTPServer'
alias updatefonts='curl https://raw.githubusercontent.com/qrpike/Web-Font-Load/master/install.sh | sh'
alias madaktari='cd ~/Desktop/Various_dev_projects/testing/madaktari'

mcd() {
  command mkdir $1 && cd $1
}

testing() {
  local url=$1;
  if [ $# -eq 1 ]
  then
    echo $url;
    local repo_name=$(echo $url | awk -F/ '{print $NF}' | sed -e 's/.git$//');
    builtin cd ~/Desktop/Various_dev_projects/testing &&
            git clone $url $repo_name &&
            cd $repo_name
  else
    builtin cd ~/Desktop/Various_dev_projects/testing
  fi
}

gauc() {
  local message=$1
  if [ $# -eq 1 ]
  then
    echo $message;
    git add -u && git commit -m "$message"
  fi
}

gaucp() {
  local message=$1
  if [ $# -eq 1 ]
  then
    echo $message;
    git add -u && git commit -m "$message"
    git push
  fi
}
zstyle :omz:plugins:ssh-agent identities id_rsa id_github

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"  # This loads nvm

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/abhi/.nvm/versions/node/v7.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/abhi/.nvm/versions/node/v7.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/abhi/.nvm/versions/node/v7.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/abhi/.nvm/versions/node/v7.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
