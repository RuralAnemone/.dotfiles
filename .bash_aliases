# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# ---

# ======== CLOUDFLARE WARP ========
alias warpr="warp-cli registration new"
alias warpc="warp-cli connect"
alias warpd="warp-cli disconnect"
alias warpx="warp-cli registration delete"

# ======== POWER MANAGEMENT ========
alias reboot="sudo reboot"
alias shutdown="sudo shutdown"
alias poweroff="sudo poweroff"

# ======== MISC ========
alias webcam="gphoto2 --stdout --capture-movie | ffmpeg -i - -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2"
alias yt-dlp="yt-dlp --write-auto-subs --write-subs --embed-subs"
alias myt-dlp="\$(which yt-dlp) -x --audio-format mp3" # to avoid conflict with previous alias
alias qr="qrencode -m 2 -t utf8 <<< "

# ======== FILES ========
alias rd="rmdir"
alias md="mkdir -p"
alias mkt="cd \$(mktemp -d) || exit 1"
alias o="less"
type bat &> /dev/null && alias o="bat"

# ======== FUN STUFF (: ========
alias :q="exit"
alias flex="neofetch --ascii_distro arch"

# ======== LS ========
# half of these are from https://redd.it/1cc4qcx/l16cbhi/
# including the following check and my introduction to lsd:
type lsd &> /dev/null && alias ls='LC_COLLATE=C lsd --color=auto --group-dirs first -F'

alias l="ls"

alias lz="ll -h"	# list, abbreviate siZe
alias la="l -a"
alias lt="ll -rt"	# list ordered by date
alias lT="ll -t"    	# list ordered by date (reversed)
alias lh="ll -d .*"	# list only hidden files/dirs
alias lr="l --tree"	# list, tRee (or RecuRsive)

# long versions:
alias ll="l -l"
alias llz="lz -l"
alias lla="la -l"
alias llr="lr -l"

# ======== NGROK ========
alias ngrok-domain="ngrok http --domain=poodle-gorgeous-leopard.ngrok-free.app"

# ======== TMUX BINDINGS ========
alias t="tmux a || tmux new -s bash"
alias tn="tmux new -s"
alias ta="tmux a -t"
alias tl="tmux ls"

# ======== PIP VENV ========
alias venv="python3 -m venv .venv && source .venv/bin/activate"

# ======== OH MY POSH ========
alias omp="oh-my-posh"

# ======== threading ========
alias axel="axel -n \$(nproc)"
alias spotdl="spotdl --threads \$(nproc)"

# ======== grep ========
alias ipgrep="grep -E -o '(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)'"

# ======== rust ========
type sccache &> /dev/null || echo install sccache to use cargo alias
type sccache &> /dev/null && alias cargo="RUSTC_WRAPPER=sccache cargo"
