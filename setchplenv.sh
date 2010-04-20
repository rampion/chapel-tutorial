# bash/zsh shell script to set the Chapel environment variables
export CHPL_HOME=/usr/local/src/chapel-1.1/chapel
export CHPL_HOST_PLATFORM=`$CHPL_HOME/util/chplenv/platform`
export PATH=$PATH:$CHPL_HOME/bin/$CHPL_HOST_PLATFORM
export MANPATH=$MANPATH:$CHPL_HOME/man
export GASNET_SPAWNFN=L
export CHPL_COMM=gasnet
