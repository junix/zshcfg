OS=$(uname)
#i Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cloud"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_COLOR_SCHEME='light'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins=(sudo)
plugins=(vagrant)
plugins=(colored-man)
plugins=(tmux)
plugins=(osx)

# User configuration
#
#
#
export PLAN9=/Users/junix/plan9port
export PATH=$PATH:$PLAN9/bin

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/bazel/output:$PATH
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
alias denv="ssh mos@dev.bitbrothers.io"
alias np="sh /Users/junix/junix.github.io/_posts/2015/np.sh"

#alias ctest="cp ~/appurl.ini /Users/junix/Library/Application\ Support/Starfish/"
#alias cprod="rm -rf  /Users/junix/Library/Application\ Support/Starfish/appurl.ini"

STARFISH_INI="/Users/junix/Library/Application Support/Starfish/appurl.ini"
function cdev()
{
        echo "HttpUrlPrefix = https://dev.starfish.im/v1">$STARFISH_INI
}

function cprod()
{
        echo "HttpUrlPrefix = https://api.starfish.im/v1">$STARFISH_INI
}

function cyxt()
{
        echo "HttpUrlPrefix = https://dev-yxt.starfish.im/v1">$STARFISH_INI
}

alias aws="cd ~/aws && ssh -i wlj-aws.pem ec2-user@52.69.109.202"
alias uaws="cd ~/aws && ssh -i wlj-aws.pem ubuntu@54.65.129.18"
alias uuaws="cd ~/aws && ssh -i wlj-aws.pem ec2-user@ec2-54-65-129-18.ap-northeast-1.compute.amazonaws.com"
alias macaws="cd ~/aws && ssh ec2-user@52.69.109.202"
alias maws="cd ~/aws && mosh ec2-user@52.69.109.202"

alias e="mvim"
alias vm="mvim -v"
alias mktemp="gmktemp"

alias m005="mosh mos@dev.bitbrothers.io"
alias m006="ssh mos@mos006"
alias m007="ssh mos@mos007"
alias m100="ssh mos@mos100"
alias m101="ssh mos@mos101"
alias m102="ssh mos@mos102"
alias m103="ssh mos@mos103"
alias mm102='mosh --ssh="ssh -t mos@dev.bitbrothers.io ssh in-102-bj"'
alias m104="ssh mos@mos104"
alias m105="ssh mos@mos105"
alias n2="cd ~/n2&&vagrant ssh"
alias n1="cd ~/n1&&vagrant ssh"
alias yr='ssh root@123.59.67.127'
alias ym='ssh mos@123.59.67.127'
alias y200='ssh -t mos@123.59.67.127 ssh 10.10.137.189'
alias y201='ssh -t mos@123.59.67.127 ssh 10.10.141.136'
alias y202='ssh -t mos@123.59.67.127 ssh 10.10.144.31'
alias y203='ssh -t mos@123.59.67.127 ssh 10.10.117.33'
alias y204='ssh -t mos@123.59.67.127 ssh 10.10.128.69'
alias y205='ssh -t mos@123.59.67.127 ssh 10.10.116.204'
alias y206='ssh -t mos@123.59.67.127 ssh 10.10.143.54'
alias y207='ssh -t mos@123.59.67.127 ssh 10.10.113.248'
alias y208='ssh -t mos@123.59.67.127 ssh 10.10.132.241'
alias y209='ssh -t mos@123.59.67.127 ssh 10.10.130.112'
alias y200='ssh -t mos@123.59.67.127 ssh 10.10.137.189'
alias yr201='ssh -t root@123.59.67.127 ssh 10.10.141.136'
alias yr202='ssh -t root@123.59.67.127 ssh 10.10.144.31'
alias yr203='ssh -t root@123.59.67.127 ssh 10.10.117.33'
alias yr204='ssh -t root@123.59.67.127 ssh 10.10.128.69'
alias yr205='ssh -t root@123.59.67.127 ssh 10.10.116.204'
alias yr206='ssh -t root@123.59.67.127 ssh 10.10.143.54'
alias yr207='ssh -t root@123.59.67.127 ssh 10.10.113.248'
alias yr208='ssh -t root@123.59.67.127 ssh 10.10.132.241'
alias yr209='ssh -t root@123.59.67.127 ssh 10.10.130.112'

alias pushinf="git push ssh://wanglijun@review.starfish.im:29418/starfish-inf-conf HEAD:refs/for/master"
alias pushyxtinf="git push ssh://wanglijun@review.starfish.im:29418/yxt-inf-conf HEAD:refs/for/master"
alias pushyxtlib="git push ssh://wanglijun@review.starfish.im:29418/yxt_lib HEAD:refs/for/master"
alias pushyxtlib_deploy="git push ssh://wanglijun@review.starfish.im:29418/yxt_lib_deploy HEAD:refs/for/master"
alias pushyxtstarfish_ws_deploy="git push ssh://wanglijun@review.starfish.im:29418/starfish-ws-deploy HEAD:refs/for/master"
alias pushyxtstarfish_op_deploy="git push ssh://wanglijun@review.starfish.im:29418/starfish-op-deploy HEAD:refs/for/master"
alias pushstarfish_ws="git push ssh://wanglijun@review.starfish.im:29418/starfish-ws HEAD:refs/for/master"
alias pushstarfish_op="git push ssh://wanglijun@review.starfish.im:29418/starfish-op HEAD:refs/for/master"
alias pushlifebook="git push ssh://wanglijun@review.starfish.im:29418/lifebook HEAD:refs/for/master"
alias pushlifebookclierl="git push ssh://wanglijun@review.starfish.im:29418/lifebook-client-erlang HEAD:refs/for/master"
alias pushqt="git push ssh://wanglijun@review.starfish.im:29418/starfish-qt HEAD:refs/for/master"
alias pushmxqt="git push ssh://wanglijun@review.starfish.im:29418/maxwell-client-qt HEAD:refs/for/master"
alias pushbackend="git push ssh://wanglijun@review.starfish.im:29418/maxwell-backend HEAD:refs/for/master"
alias pushbbbin="git push ssh://wanglijun@review.starfish.im:29418/bb_bin HEAD:refs/for/master"
alias pushlocalbackend="git push junix@192.168.33.1:/repo/maxwell-backend HEAD:refs/for/master"
alias pushfrontend="git push ssh://wanglijun@review.starfish.im:29418/maxwell-frontend HEAD:refs/for/master"
alias pushmaster="git push ssh://wanglijun@review.starfish.im:29418/maxwell-master HEAD:refs/for/master"
alias pusharm="git push ssh://wanglijun@review.starfish.im:29418/armstrong HEAD:refs/for/master"
alias pushmaxwellproto="git push ssh://wanglijun@review.starfish.im:29418/maxwell-protocol HEAD:refs/for/master"
alias pushlifeproto="git push ssh://wanglijun@review.starfish.im:29418/lifebook-protocol HEAD:refs/for/master"


alias u='ssh ubuntu' 

alias blog="cd /mnt1/logs/maxwell-backend"
alias flog="cd /mnt1/logs/maxwell-frontend"
alias mlog="cd /mnt1/logs/maxwell-master"
alias bsrc="cd /opt/mos/codebase/maxwell-backend"
alias fsrc="cd /opt/mos/codebase/maxwell-frontend"
alias msrc="cd /opt/mos/codebase/maxwell-master"
alias brel="cd /opt/mos/codebase/maxwell-backend/rel"
alias frel="cd /opt/mos/codebase/maxwell-frontend/rel"
alias mrel="cd /opt/mos/codebase/maxwell-master/rel"
alias tblog="tail -f  /mnt1/logs/maxwell-backend/info.log"
alias tflog="tail -f  /mnt1/logs/maxwell-frontend/info.log"
alias tmlog="tail -f  /mnt1/logs/maxwell-master/info.log"
alias eblog="view  /mnt1/logs/maxwell-backend/info.log"
alias eflog="view  /mnt1/logs/maxwell-frontend/info.log"
alias emlog="view  /mnt1/logs/maxwell-master/info.log"


# ZSH_THEME="miloshadzic"
DEFAULT_USER="junix"

export GOROOT=/usr/local/go
export EDITOR=vim

case $OS in
   "Darwin")
      . /usr/local/Cellar/autojump/22.2.4/etc/profile.d/autojump.sh
      ;;
    "Linux")
      . /usr/share/autojump/autojump.zsh
      ;;
esac


bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward

#alias vim='vim -w ~/.vimlog "$@"'

case $OS in
  "Darwin")
	alias ls='gls --color=auto'
	alias javac="javac -J-Dfile.encoding=utf8"
	;;
   *)
	;;
esac

alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'
alias grep="grep --color=auto"
alias -s html=subl   # 在命令行直接输入后缀为 html 的文件名，会在 TextMate 中打开
alias -s rb=subl     # 在命令行直接输入 ruby 文件，会在 TextMate 中打开
#alias -s erl=vi       # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js=vi
alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

alias co='./rebar comp'
alias b='./rebar comp sh'
#source ~/otp17/activate

##======= docker ========
#export DOCKER_HOST=tcp://192.168.59.103:2376
#export DOCKER_CERT_PATH=/Users/junix/.boot2docker/certs/boot2docker-vm
#export DOCKER_TLS_VERIFY=1


## vagrant 
export PATH=/opt/homebrew-cask/Caskroom/vlc/2.2.1/VLC.app/Contents/MacOS:/opt/vagrant/bin:${PATH}

alias fmterl='gsed -i "s/,\([^ ]\)/, \1/g" *.erl'


export PAGER='less -R -s -i'
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;32m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;34m'


fancy-ctrl-z () {
        if [[ $#BUFFER -eq 0  ]]; then
                BUFFER="fg"
                zle accept-line
        else
                zle push-input
                zle clear-screen
        fi

}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

export PATH="/Users/junix/zookeeper-3.4.6/bin":${PATH}
export HOMEBREW_GITHUB_API_TOKEN="6d0eb752df63c9b701a59e9e4ffe32dcc21d3911"

gen_tags()
{
        find /opt/mos/codebase/lifebook/src -name '*.[he]rl'>/tmp/tag.files
        find /opt/mos/codebase/starfish_ws -name '*.py'>>/tmp/tag.files
        find /opt/mos/codebase/lifebook-protocol/src -name '*.[he]rl'>>/tmp/tag.files
        find /opt/mos/codebase/lifebook-protocol/include -name '*.[he]rl'>>/tmp/tag.files
        find /opt/mos/codebase/armstrong/src  -name '*.[he]rl'>>/tmp/tag.files
        find /opt/mos/codebase/maxwell-protocol/src  -name '*.[he]rl'>>/tmp/tag.files
        find /opt/mos/codebase/maxwell-protocol/include  -name '*.[he]rl'>>/tmp/tag.files
        find /opt/mos/codebase/[he]rlzk/src  -name '*.[he]rl'>>/tmp/tag.files
        find /opt/mos/codebase/maxwell-backend/src  -name '*.[he]rl'>>/tmp/tag.files
        find /opt/mos/codebase/maxwell-master/src  -name '*.[he]rl'>>/tmp/tag.files
        find /opt/mos/codebase/maxwell-frontend/src  -name '*.[he]rl'>>/tmp/tag.files
        find /opt/mos/codebase/maxwell-client-qt/  -type f>>/tmp/tag.files
        find /Users/junix/eleveldb/src -name '*.[he]rl'>>/tmp/tag.files
        (cd ~ && ctags -L /tmp/tag.files)
        rm /tmp/tag.files
        mv ~/tags ~/ctags
}


pull_codebase()
{
        for d in $(ls -d /opt/mos/codebase/*);do
                echo "git pull $d"
                (cd $d && git pull)
        done
}

clear_codebase()
{
        for d in $(ls -d /opt/mos/codebase/*);do
                echo "checkout $d"
                (cd $d && git checkout .)
        done
}

mk_backend_deps()
{
        cs=("armstrong" "cuttlefish" "erlzk" "goldrush" "lager" "meck" "neotoma" "protobuffs" "getopt" "eleveldb" "lifebook" "lifebook_protocol" "maxwell_protocol" "lifebook_client")
        CB="/opt/mos/codebase"
        deps="/opt/mos/codebase/maxwell_backend/deps"
        if [ ! -e $deps ];then
                mkdir $deps
        fi
        for c in ${cs[@]};do
                echo "ln -sf ${CB}/$c ${deps}/"
                ln -sf ${CB}/$c ${deps}/
        done
} 


##========= [ Tmux ] ===============
alias dev="mux dev"


alias bak="cd /opt/mos/codebase/maxwell-backend"
