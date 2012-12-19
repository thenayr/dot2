if [ -f ~/.bash_prompt ]; then
  source ~/.bash_prompt
fi
export GRAILS_HOME=/usr/share/java/grails
export PATH=/usr/local/bin:/usr/local/nginx/sbin:/usr/local/sbin:${AWS_AUTO_SCALING_HOME}/bin:${AWS_CLOUDWATCH_HOME}/bin:$GRAILS_HOME/bin:$PATH:/usr/local/ec2-tools
export EDITOR=VIM:$EDITOR
export TERM='xterm-256color'
#export PATH=$PATH:~/bin
alias l='ls'
alias ll='ls -lAh'
alias la='ls -a'
alias lo='logout'
alias c='clear'
alias ttop='top -U $USER'
alias crails='cd ~/designAndDevelopment'
alias ga='git add .'
alias gs='git status'
alias gc='git commit -m'
alias gl='git pull'
alias gp='git push'
alias begs='bundle exec guard start'
alias be='bundle exec'
alias deploy='bundle exec cap deploy'
alias rmigrate='bundle exec rake db:migrate db:test:clone'
alias rlistadd='knife node run_list add'
alias rlistremove='knife node run_list remove'
alias nlist='knife node list'
alias ndelete='knife node delete'
alias nshow='knife node show'
alias clist='knife client list'
alias cdelete='knife client delete'
alias bedit='vim ~/.bash_profile'
alias bup='source ~/.bash_profile'
alias cookup='knife cookbook upload'
alias ec2up="knife ec2 server create -I ami-7fb0e93a -f c1.medium --ssh-user ubuntu -r 'role[bootstrap]' --template-file bootstrap/rvm.erb -N"
alias ec2list="knife ec2 server list"
alias ec2down="knife ec2 server delete"
alias hosts="sudo vim /etc/hosts"
alias tmux="TERM=screen-256color-bce tmux"
alias tnew="tmux new -s"
alias tlist="tmux ls"
alias tat="tmux attach -t"
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}
##################################################
# Fancy PWD display function
##################################################
# The home directory (HOME) is replaced with a ~
# The last pwdmaxlen characters of the PWD are displayed
# Leading partial directory names are striped off
# /home/me/stuff          -> ~/stuff               if USER=me
# /usr/share/big_dir_name -> ../share/big_dir_name if pwdmaxlen=20
##################################################
bash_prompt_command() {
        # How many characters of the $PWD should be kept
        local pwdmaxlen=40
        # Indicate that there has been dir truncation
        local trunc_symbol=".."
        local dir=${PWD##*/}
        pwdmaxlen=$(( ( pwdmaxlen < ${#dir} ) ? ${#dir} : pwdmaxlen ))
        NEW_PWD=${PWD/$HOME/~}
        local pwdoffset=$(( ${#NEW_PWD} - pwdmaxlen ))
        if [ ${pwdoffset} -gt "0" ]
            then
            NEW_PWD=${NEW_PWD:$pwdoffset:$pwdmaxlen}
            NEW_PWD=${trunc_symbol}/${NEW_PWD#*/}
        fi
}
#
bash_prompt() {
    local NONE='\[\033[0m\]'    # unsets color to term's fg color

        # regular colors
    local K='\[\033[0;30m\]'    # black
    local R='\[\033[0;31m\]'    # red
    local G='\[\033[0;32m\]'    # green
    local Y='\[\033[0;33m\]'    # yellow
    local B='\[\033[0;34m\]'    # blue
    local M='\[\033[0;35m\]'    # magenta
    local C='\[\033[0;36m\]'    # cyan
    local W='\[\033[0;37m\]'    # white
                            
    # empahsized (bolded) colors
    local EMK='\[\033[1;30m\]'
    local EMR='\[\033[1;31m\]'
    local EMG='\[\033[1;32m\]'
    local EMY='\[\033[1;33m\]'
    local EMB='\[\033[1;34m\]'
    local EMM='\[\033[1;35m\]'
    local EMC='\[\033[1;36m\]'
    local EMW='\[\033[1;37m\]'
                                                
    # background colors
    local BGK='\[\033[40m\]'
    local BGR='\[\033[41m\]'
    local BGG='\[\033[42m\]'
    local BGY='\[\033[43m\]'
    local BGB='\[\033[44m\]'
    local BGM='\[\033[45m\]'
    local BGC='\[\033[46m\]'
    local BGW='\[\033[47m\]'
                                                                
    local UC=$C                 # user's color
        [ $UID -eq "0" ] && UC=$R   # root's color

    #PROMPT_COMMAND='echo -ne "\033]0;${USER}: ${PWD}\007"'
    #PS1="${EMK}[${UC}\u${EMR}@${UC}\h ${EMB}\${NEW_PWD}${EMK}]${UC}\\$ ${NONE}" 
    PS1="${Y}[${R}\u${R}${W}@${UC}\h ${EMB}\${NEW_PWD}${Y}]${W} ${C}\$(parse_git_branch)${B} \n$ ${NONE}"
} 
#   
PROMPT_COMMAND=bash_prompt_command
bash_prompt
unset bash_prompt

#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced


#Mamp stuff here
#export PATH=/Applications/MAMP/bin/php/php5.3.6/bin:/Applications/MAMP/Library/bin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
test -r /sw/bin/init.sh && . /sw/bin/init.sh
