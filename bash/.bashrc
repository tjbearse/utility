# ~/.bashrc_ext: executed by .bashrc
# holds some personlizations separated for portablility

#common aliases
#alias ls="ls --color=auto"
alias grep="grep --color=auto"
#alias ls="ls -h"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias mvim='open -a MacVim'
alias chrome='open -a Google\ Chrome'
alias qfind='find . -iname'
alias qdate='date +%Y-%m-%d'

alias curlt='curl -w "@$(dirname ~/util/curl-time.txt)/$(basename ~/util/curl-time.txt)" -o /dev/null'
alias curltcsv='curl -w "@$(dirname ~/util/curl-time.tsv)/$(basename ~/util/curl-time.txt)" -o /dev/null'

alias pbcopyhtml='textutil -stdin -format html -convert rtf -stdout | pbcopy'

# EDITOR aliases
# TODO these should be moved to path so that I can use them with git, etc
# TODO these should setup the server if its not there. -a "" does this but it will never do graphical. Maybe start like 'emacs $@ >/dev/null 2>/dev/null &' in that case
# send to an existing server, don't wait (relevant if gui)
alias em='emacsclient -n'
# blocking edit on an existing server, will go to gui if that's where the server is
alias ec='emacsclient'
# blocking edit on an existing server, will go term always
alias ect='emacsclient -t'
# should cd to current directory with -c or something
VISUAL=ec
EDITOR=ect

# python autocomplete
export PYTHONSTARTUP=~/.pythonrc

# If not running interactively, do not do anything
[[ $- != *i* ]] && return

if [ -f ~/.git-completion.bash ]; then
	source ~/.git-completion.bash
fi

up() {
	path=$(git rev-parse --show-toplevel);
	if [ $? == 0 ]; then
		cd $path
	fi
}

repo() {
	StashFile="$HOME/.repo_list.txt"
	if [ ! -f "$StashFile" ]; then
		echo "recreating cache"
		find ~/src -name '.cache' -prune -o -name '.git' -type d -prune -print0 | xargs -0 -n1 dirname | sed "s#$HOME#~#" > "$StashFile"
	fi
	cd $(fzf <"$StashFile" | sed "s#~#$HOME#")
}
export FZF_DEFAULT_COMMAND='rg "." --hidden --follow -l --color=never -g ""'

# prompt
PS1_START="\[\033[1;30m\]\w\[\033[0;0m\]"
PS1_END="\[\033[0;0m\]\u \[\033[0;44m\]\[\033[1;33m\]$\[\033[0;0m\] "
PS1="$PS1_START\n$PS1_END"

GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_FETCH_REMOTE_STATUS=0
GIT_PROMPT_START_USER="\n$PS1_START\n"
GIT_PROMPT_END_USER="\n$PS1_END"
source ~/.bash_prompt

# If not running run tmux
#[[ -z "$TMUX" ]] && exec tmux
