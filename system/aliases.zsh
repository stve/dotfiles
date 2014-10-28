# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

alias rm='rm -i'
alias cl='clear'

alias mstart='launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist'
alias mstop='launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist'
alias mystart='launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist'
alias mystop='launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist'
alias memstart='launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist'
alias memstop='launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.memcached.plist'
alias redstart='launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.redis.plist'
alias redstop='launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.redis.plist'
alias pgstart='launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist'
alias pgstop='launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist'
alias elstart='launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.elasticsearch.plist'
alias elstop='launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.elasticsearch.plist'
