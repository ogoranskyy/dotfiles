# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/ogoranskyy/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( git zsh-autosuggestions )

source $ZSH/oh-my-zsh.sh

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
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# fpath is an array of zsh paths. 
# we add here or own functions from .zsh_functions to fpath

DISABLE_UPDATE_PROMPT=false

fpath=( ~/.zsh_functions "${fpath[@]}")

PATH="/home/ogoranskyy/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/ogoranskyy/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/ogoranskyy/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/ogoranskyy/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/ogoranskyy/perl5"; export PERL_MM_OPT;

autoload -Uz rabbitmq_get_dlq_messages filter_tenant_id filter_retry_queue filter_payloads filter_count_messages decode_jwt kn-connect

PROMPT="%{$fg[white]%}%n@%{$fg[green]%}%m%{$reset_color%} ${PROMPT}"

alias start_ep6docker="sh ~/Docker/start_ep6docker.sh"

alias wether="curl wttr.in/Jena"

BEYOND=/home/ogoranskyy/Development/beyond

PATH="$BEYOND/ng-spikes/beyond-console:$PATH"

alias connect_telepresence="sh ~/Development/connect_telepresence.sh"

# get the credentials with kn-connect if you want to conenct to debug
alias connect_cloud_mysql="kubectl port-forward deployment/mysql 3306:3306"

alias cloud_sql_proxy_live="/opt/cloud_sql_proxy -instances=beyond-live:europe-west1:beyondshop-cloud-01a=tcp:3306"

alias cloud_sql_proxy_preprod="/opt/cloud_sql_proxy -instances=epages-ng:europe-west1:preprod-03a=tcp:3306"

alias enable_message_tracing_debug="sh ~/Development/enable_message_tracing_on_debug.sh"

alias links="links2"

alias jwt="pyjwt decode --no-verify"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/ogoranskyy/Downloads/google-cloud-sdk-275.0.0-linux-x86_64/google-cloud-sdk/path.zsh.inc' ]; then . '/home/ogoranskyy/Downloads/google-cloud-sdk-275.0.0-linux-x86_64/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/ogoranskyy/Downloads/google-cloud-sdk-275.0.0-linux-x86_64/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/ogoranskyy/Downloads/google-cloud-sdk-275.0.0-linux-x86_64/google-cloud-sdk/completion.zsh.inc'; fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/ogoranskyy/.sdkman"
[[ -s "/home/ogoranskyy/.sdkman/bin/sdkman-init.sh" ]] && source "/home/ogoranskyy/.sdkman/bin/sdkman-init.sh"
