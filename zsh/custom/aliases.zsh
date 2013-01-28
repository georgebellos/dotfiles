# use vim from macvim
alias vim='/usr/local/Cellar/macvim/7.3-66/MacVim.app/Contents/MacOS/Vim'

# Ruby
# Color output in ri
alias ri='ri -f ansi'

# Restart pow server
alias rpow='touch ~/.pow/restart.txt'

# List only gems on global gemset
alias ggems='rvm @global do gem list'

# List gems on a gemset
alias gems='GEM_PATH=$GEM_HOME gem list'

alias migrate='rake db:migrate && rake db:test:prepare'

# Postgres
alias pstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias pstart='postgres -D /usr/local/var/postgres'

# Normally it is better to start postgres in the background
alias pstartb='postgres -D /usr/local/pgsql/data >logfile 2>&1 &'

# Start with log
alias pstartl='pg_ctl start -l logfile'

# Foreman
alias f='foreman'
alias fc='foreman check'
alias fs='foreman start'

# disable autocorrection on:

alias rspec='nocorrect rspec'
