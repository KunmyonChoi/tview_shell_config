#
# .cshrc file for VCDEV environment
#
# set environments for run and development
setenv HOSTNAME "T-VIEW-BUILD" 
setenv EDITOR vim
setenv SYSTEM_TARGET_HOME $HOME

setenv TF_HOME $HOME/framework/TransportFramework
setenv TF_MAKECONFIG $TF_HOME/MP/conf/Make.config
setenv PRJ_HOME $HOME/projects/Universal
setenv MAKECONFIG $PRJ_HOME/MakefileTemplate/conf/Make.config
setenv VC_APPS_HOME $PRJ_HOME/Apps
setenv VC_CORE_HOME $PRJ_HOME/Core
setenv EXT_LIB_HOME $PRJ_HOME/ExternalLib

setenv BOOST_HOME $HOME/framework/boost


setenv TAP_HOME $HOME/framework/tap
setenv MPF_HOME $TAP_HOME

setenv INI_HOME $HOME/etc/ini
setenv LOG_HOME $HOME/log

setenv TELCO_EMS_HOME $HOME/framework/TELCOOAM

setenv LD_LIBRARY_PATH $TF_HOME/lib:$SYSTEM_TARGET_HOME/release/CUR/lib:/lib:/usr/lib:/usr/lib64:/usr/local/lib:/usr/local/lib64:/usr/local/mpc/lib:/usr/local/gmp/lib:/usr/local/mpfr/lib/:./:$BOOST_HOME/lib:$TELCO_EMS_HOME/lib:$TAP_HOME/lib:$MPF_HOME/lib
setenv PATH /usr/local/gcc-4.9.2/bin:$SYSTEM_TARGET_HOME/release/CUR/bin:$SYSTEM_TARGET_HOME/release/CUR/bin/scripts:$PRJ_HOME/bin-release:/bin:/sbin:/usr/sbin:/usr/bin:/usr/local/bin:./:$TELCO_EMS_HOME/bin:$TAP_HOME/bin:$MPF_HOME/bin:$SYSTEM_TARGET_HOME/scripts:$SYSTEM_TARGET_HOME/depot_tools
setenv SEARCH_GLOBALTAGS ./tags,../tags,${PRJ_HOME}/tags
 
# set timezone, language
setenv TZ KST-9
setenv LANG "ko_KR.UTF-8"
# resource limits and umask
limit coredumpsize unlimited
limit stacksize unlimited
setenv THREAD_STACK_SIZE 2097152
umask 022
unsetenv SSH_ASKPASS

setenv MALLOC_CHECK_ 3


if($?prompt == 1) then
# set the user-definable shell variables
set cdpath=(.. ../.. $SYSTEM_TARGET_HOME $SYSTEM_TARGET_HOME/libsrc $SYSTEM_TARGET_HOME/src $SYSTEM_TARGET_HOME/lib $SYSTEM_TARGET_HOME/bin $PRJ_HOME $VC_CORE_HOME $VC_APPS_HOME)
set fignore=(.o .s)
set filec
set history=200
set ignoreeof
set noclobber
set savehist=2000
set ignoreeof
set noclobber
set autolist
set autoexpand
unset autologout

# set prompt
set login_name=`/usr/bin/whoami`
if ($login_name == "root") then
alias setprompt 'set prompt="%{\033[1;33m%}[`whoami`@"$HOSTNAME"]:`pwd` $%{\033[0m%} "'
else
alias setprompt 'set prompt="%{\033[1;33m%}[`whoami`@"$HOSTNAME"]:`pwd` %%%{\033[0m%} "'
endif
unset login_name
alias cd 'chdir \!*; setprompt'
alias goto 'pushd \!*; setprompt'
setprompt
# set terminal characteristics
stty cs8 -istrip -ixon erase ^H kill ^U intr ^C susp ^Z
# set local aliases
if (-f $SYSTEM_TARGET_HOME/.alias) then
source $SYSTEM_TARGET_HOME/.alias
endif
# set message
clear
set welcome message
echo " "
echo "===================================================================="
echo "[1;32m[7m VideoCloud for Linux [0m"
echo "===================================================================="
echo " Hostname | $HOSTNAME "
echo " Project Leader | soongil.choi "
echo " Current Phase | [1;31m[5m  라이브러리 & 어플리케이션     [0m"
echo " PKG Version | 1.3.1 "
echo " PKG Build DateTime | N/A "
echo "===================================================================="
echo " [1;33m[5m작업 디렉토리 유의하시기바랍니다. [0m"
echo " EXT_LIB_HOME --> projects/Universal/ExternalLib"
echo " VC_CORE_HOME --> projects/Universal/Core"
echo " VC_APPS_HOME --> projects/Universal/Apps"
echo "===================================================================="
echo " "
endif
# End of .cshrc
