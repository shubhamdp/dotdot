#==============================================================================
#Global Setting: Command Prompt, PATH, history
#First export the proper prompt as follows
#[username@hostname full_pwd_path] $:

alias pcs='/usr/local/bin/pycscope -R'

alias pls='readlink -f'
alias cgrep='grep -rIn --include *.c --include *.h'

# Just to make my life simple adding alias to nrfjprog
# These are specifically for nrf52 boards
alias nrflist='nrfjprog -i'
alias nrferase='nrfjprog -f nrf52 --eraseall'
alias nrfreset='nrfjprog -f nrf52 --reset'
alias nrfprogram='nrfjprog -f nrf52 --program'
alias jlink-server='JLinkExe -device NRF52 -if SWD -speed 4000 -autoconnect 1'
alias jlink-client='JLinkRTTClientExe'

# Using virtual env we are maintainig two different versions of nrfutil
alias nrfutil_mesh='/home/shubham/Downloads/nrf/nrfutil_mesh/mesh_env/bin/nrfutil'
alias nrfutil='/home/shubham/Downloads/nrf/nrfutil_mesh/non_mesh_env/bin/nrfutil'

#tmux_aliases
alias tmux_new='tmux new -s'
alias tmux_attach='tmux attach -t'
alias tmux_ls='tmux list-sessions'
alias tmux_lw='tmux list-windows'

