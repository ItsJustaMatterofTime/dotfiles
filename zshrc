#########
# Theme #
#########

# For a full list of supported colors, run this little code in your terminal:
# for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"

export TERM='rxvt-256color'
POWERLEVEL9K_MODE='nerdfont-config'                                     # specify mode


POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(battery dir background_jobs root_indicator status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(custom_me ram time)


POWERLEVEL9K_PROMPT_ON_NEWLINE=true                                     # second line
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="\U256D\U2500"
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="\U2570\U2500%K{254}%F{black} `date +%r` \UF017 %f%k%F{254}%f "

POWERLEVEL9K_ANACONDA_LEFT_DELIMITER="("                                # anaconda
POWERLEVEL9K_ANACONDA_RIGHT_DELIMITER=")"

POWERLEVEL9K_ROOT_ICON='\uf225 \uf224 \uf228 \uf226'                    # root   
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND='213'
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND='black'

POWERLEVEL9K_CUSTOM_ME="echo -n \"\uf024 \uf22d \uf031\""               # custom
POWERLEVEL9K_CUSTOM_ME_BACKGROUND='076'
POWERLEVEL9K_CUSTOM_ME_FOREGROUND='black'

POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE=true                               # background jobs
POWERLEVEL9K_BACKGROUND_JOBS_ICON='\uf186'

POWERLEVEL9K_BATTERY_ICON='\uf1e6'                                      # battery
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND="221"
POWERLEVEL9K_BATTERY_CHARGING_VISUAL_IDENTIFIER_COLOR="221"
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND="076"
POWERLEVEL9K_BATTERY_CHARGED_VISUAL_IDENTIFIER_COLOR="076"
POWERLEVEL9K_BATTERY_DISCONNECTED=$DEFAULT_COLOR
POWERLEVEL9K_BATTERY_LOW_THRESHOLD=30
POWERLEVEL9K_BATTERY_LOW_BACKGROUND="160"
POWERLEVEL9K_BATTERY_LOW_FOREGROUND="231"
POWERLEVEL9K_BATTERY_LOW_VISUAL_IDENTIFIER_COLOR="231"
POWERLEVEL9K_BATTERY_VERBOSE=true

POWERLEVEL9K_HOME_ICON='\uf015'                                         # directory
POWERLEVEL9K_HOME_SUB_ICON='\uf07c'
POWERLEVEL9K_FOLDER_ICON='\uf07b'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="221"
POWERLEVEL9K_DIR_HOME_BACKGROUND="117"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="155"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="236"
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

POWERLEVEL9K_TIME_FORMAT="%D{\uf073 %d.%m.%y %a}"                       # date
POWERLEVEL9K_TIME_BACKGROUND="254"

POWERLEVEL9K_RAM_ICON='\uf25d'                                          # ram
POWERLEVEL9K_RAM_ELEMENTS=ram_free
POWERLEVEL9K_RAM_BACKGROUND="221"

POWERLEVEL9K_STATUS_VERBOSE=false                                       # status
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='198'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='198'
POWERLEVEL9K_STATUS_ERROR_IN_NON_VERBOSE=true

POWERLEVEL9K_SHOW_CHANGESET=false                                       # changeset
POWERLEVEL9K_CHANGESET_HASH_LENGTH=12


# ===============================================================================================
#############
# OH-MY-ZSH #
#############

# >>>>>>>>>>>>>>
# Manually Added
# >>>>>>>>>>>>>>

DISABLE_UPDATE_PROMPT=true

# >>>>>>>>>>>>>>

ZSH=/usr/share/oh-my-zsh/                       # Path to your oh-my-zsh installation.
ZSH_THEME="powerlevel9k/powerlevel9k"           # Your theme directory

CASE_SENSITIVE="true"                           # Whether letter case matters
HYPHEN_INSENSITIVE="false"                      # Hyphen-insensitive completion. Case sensitive completion must be off. _ and - will be interchangeable.
DISABLE_AUTO_UPDATE="true"                      # Auto-update checks.
export UPDATE_ZSH_DAYS=1                        # How often to auto-update (in days).
DISABLE_AUTO_TITLE="false"                      # Auto-setting terminal title.
ENABLE_CORRECTION="true"                        # Command auto-correction.
COMPLETION_WAITING_DOTS="true"                  # Display red dots whilst waiting for completion.
ZSH_CUSTOM=$HOME/.oh-my-zsh                     # Another custom folder than $ZSH/custom

alias yt="youtube-dl --extract-audio --audio-format best --audio-quality 0 --prefer-ffmpeg --format bestaudio"
alias rg="ranger"
alias k380="sudo k380"
alias pa="pacaur"
alias ping8="ping -c 10 8.8.8.8"

alias vim="vim -u $HOME/.vim/vimrc"
alias mutt="mutt -F $HOME/.mutt/muttrc"
alias colorfg="colorfg -w -r -s"
alias qutebrowser="qutebrowser --backend=webengine"


# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Time stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

#===============================================================================================
##################
# Manually Added #
##################

export LANG='en_US.UTF-8'
export EDITOR='vim'
export BROWSER='qutebrowser --backend=webengine'
export SSH_KEY_PATH="/home/sparklinggt/.ssh/id_ed25519"
source $HOME/.personal

# Add ~/bin to PATH
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Add Android related things to PATH
if [ -d "$HOME/Android/Sdk" ] ; then
    PATH="$HOME/Android/Sdk/tools:$HOME/Android/Sdk/platform-tools:$PATH"
    export ANDROID_HOME="$HOME/Android/Sdk"
fi

export PATH

zle_highlight=(default:bold)            # Make user input bold

zmodload zsh/complist

autoload -Uz compinit
compinit

autoload -U zmv                         # Zmv -  a command for renaming files by means of shell patterns.
autoload -U zargs                       # Zargs, as an alternative to find -exec and xargs.
setopt promptsubst                      # Turn on command substitution in the prompt (and parameter expansion and arithmetic expansion).
setopt noflowcontrol                    # Nobody need flow control anymore. Troublesome feature.
setopt histignorealldups                # If a new command duplicates an older one in the history list, the older command is removed from the list
setopt histignorespace                  # remove command lines from the history list when the first character on the line is a space
setopt append_history                   # Append history list to the history file; Required for share_history.
setopt share_history                    # Import new commands from the history file also in other zsh-session
setopt extended_history                 # Save each command's beginning timestamp and the duration to the history file
setopt auto_cd                          # If a command is not a command, but is the name of a directory, perform the cd command to that directory.
setopt longlistjobs                     # Display PID when suspending processes as well
setopt notify                           # Report the status of backgrounds jobs immediately
setopt hash_list_all                    # Whenever a command completion is attempted, make sure the entire command path is hashed first.
setopt completeinword                   # Not just at the end
setopt nohup                            # don't send SIGHUP to background processes when the shell exits.
setopt auto_pushd                       # Make cd push the old directory onto the directory stack.
setopt nobeep                           # Avoid "beep"ing
setopt pushd_ignore_dups                # Don't push the same dir twice.
setopt noglobdots                       # Shouldn't match dotfiles. ever.
setopt noshwordsplit                    # Use zsh style word splitting
setopt unset                            # Don't error out when unset parameters are used

# in order to use #, ~ and ^ for filename generation grep word
# *~(*.gz|*.bz|*.bz2|*.zip|*.Z) -> searches for word not in compressed files
# don't forget to quote '^', '~' and '#'!
setopt extended_glob

