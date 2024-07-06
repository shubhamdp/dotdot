alias ll='ls -l'
alias vim='nvim'
alias pls='ls $PWD/'

# alias xgrep='grep -rnI --exclude tags --exclude-dir={third_party,build,tests,test,testing} --exclude="*.map"'
alias f='find . -name'

alias gen_chip_ctags='ctags -R --links=no --exclude={\*.py,\*.js,\*.rb,third_party} .'

# idf
alias esptool='esptool.py -p $ESPPORT'

alias idf_e='idf.py erase-flash'
alias idf_b='idf.py build'
alias idf_f='idf.py flash'
alias idf_m='idf.py monitor'

alias idf_ef='idf.py erase-flash flash'
alias idf_efm='idf.py erase-flash flash monitor'

alias idf_fm='idf.py flash monitor'
alias idf_afm='idf.py app-flash monitor'
alias idf_st='idf.py set-target'
alias idf_clean='rm -rf managed_components dependencies.lock build sdkconfig sdkconfig.old'

export PATH=$PATH:/Users/shubhampatil/shubham/bin
source /Users/shubhampatil/shubham/bin/helper_functions.sh

export ESPBAUD=921600
export IDF_CCACHE_ENABLE=1

# alias for MSS helpers
# alias ffs_cl_upload='/Users/shubhampatil/esp/amazon_mss/cli_tool/ffn-manufacturing-toolkit controllog upload \
#     -e 1NO0464CA2JI6@na-sftp.amazonsedi.com \
#     -k /Users/shubhampatil/esp/amazon_mss/cli_tool/mss_control_logs.pem \
#     -t device -p 12345 -l'
# alias ffs_cl_download='/Users/shubhampatil/esp/amazon_mss/cli_tool/ffn-manufacturing-toolkit controllog download \
#     -e 1Y94IYXPB3OJX@na-sftp.amazonsedi.com \
#     -k /Users/shubhampatil/esp/amazon_mss/cli_tool/mss_control_logs.pem \
#     -p 12345'

alias set_pyparse_2='python3 -m pip uninstall -y pyparsing && python3 -m pip install pyparsing==2.3.0'
alias set_pyparse_3='python3 -m pip uninstall -y pyparsing && python3 -m pip install pyparsing'

# since status takes a lot of time in connectedhomeip
alias gsis='git status --ignore-submodule'
alias gfu='git fetch upstream'
alias grfh='git rebase FETCH_HEAD'

alias pls='realpath'

alias bct='scripts/examples/gn_build_example.sh examples/chip-tool out/host'
. "$HOME/.cargo/env"
