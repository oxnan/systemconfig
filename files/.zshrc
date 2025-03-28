username=$USERNAME
export ZSH="/home/${username}/.oh-my-zsh"

#autojump
[[ -s /home/${username}/.autojump/etc/profile.d/autojump.sh ]] && source /home/${username}/.autojump/etc/profile.d/autojump.sh

### HISTORY SETUP ###
HISTTIMEFORMAT='%F %T '

####################
source /home/${username}/.antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# auto suggestions
antigen bundle zsh-users/zsh-autosuggestions

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#e45b8f,underline"

PS1='%(?.%(!.;.;).%F{red}%B;%b%f) '

# Tell Antigen that you're done.
antigen apply

function mkctf() {
	if [ $# -eq 0 ]
	  then
	    echo "Usage: mkctf <ctfname>"
	fi
	if [ ! -d "~/ctf" ] 
	then
		mkdir ~/ctf
	fi
	mkdir ~/ctf/$1
	mkdir ~/ctf/$1/foren
	mkdir ~/ctf/$1/crypto
	mkdir ~/ctf/$1/web
	mkdir ~/ctf/$1/misc
	mkdir ~/ctf/$1/pwn
	mkdir ~/ctf/$1/rev
	mkdir ~/ctf/$1/osint
	cd ~/ctf/$1
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export DOTS="/home/${username}/.config"
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' --color=fg:#afbfbf,bg:#000000,hl:#cc00cc --color=fg+:#ff9900,bg+:#000000,hl+:#ff00ff --color=info:#ff00ff,prompt:#ff9900,pointer:#ff00ff --color=marker:#00ff00,spinner:#ff9900,header:#00ffff'
export PATH=/home/${username}/.nimble/bin:$PATH

source ~/.aliases