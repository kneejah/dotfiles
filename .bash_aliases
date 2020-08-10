# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -lah'

# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
if [ -f ~/.git-prompt/git-prompt.sh ]; then
    . ~/.git-prompt/git-prompt.sh
    GIT_PS1_SHOWDIRTYSTATE=true
    GIT_PS1_SHOWCOLORHINTS=true
    GIT_PS1_UNTRACKEDFILES=true
    PROMPT_COMMAND='__git_ps1 "\[\033[38;5;10m\]\u@\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]" "\\\$ "'
fi

# start ssh-agent
if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval $(ssh-agent) > /dev/null
fi

cd ~
screenfetch
