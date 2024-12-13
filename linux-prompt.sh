#export PROMPT_COMMAND='PS1="\[\033[0;32m\]┌[$(date "+%Y-%m-%d %H:%M") \u@\h:\[\033[0;34m\]\W\[\033[0;32m\]]\n└> \[\033[0m\]"'
#export PROMPT_COMMAND='PS1="\[\033[0;32m\]┌[$(date "+%Y-%m-%d %H:%M") \u@\h:\[\033[0;34m\]\w\[\033[0;32m\]]\[\033[0;33m\]\$(git rev-parse --abbrev-ref HEAD 2>/dev/null)\[\033[0m\]\n└> "'
export PROMPT_COMMAND='PS1="\[\033[0;32m\]┌(\[\033[0;31m\]$(date "+%d/%m/%Y %H:%M")\[\033[0;32m\] - \u@\h) - [\[\033[0;34m\]\w\[\033[0;32m\]]\[\033[0;31m\]\$(git rev-parse --abbrev-ref HEAD 2>/dev/null)\[\033[0m\]\n\[\033[0;32m\]└>\[\033[0m\] "'
