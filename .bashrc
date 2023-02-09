# https://github.com/magicmonty/bash-git-prompt
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
if [ -f "~/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source ~/.bash-git-prompt/gitprompt.sh
fi
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

# https://that.guru/blog/automatically-set-tmux-window-name/
case "$TERM" in 
  linux|xterm*|rxvt*)
    export PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME%%.*}: ${PWD##*/}\007"'
  ;;
  screen*)
    export PROMPT_COMMAND='echo -ne "\033k${HOSTNAME%%.*}: ${PWD##*/}\033\\" '
  ;;
  *)
  ;;
esac
eval "$(direnv hook bash)"
