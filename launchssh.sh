#! /bin/sh

for CONFIG in ~/autossh/*.tunnel; do
   SSHPROCS=$(ps uwx | grep "[a]utossh.sh $CONFIG" | wc -l)
   [ $SSHPROCS -eq 0 ] || exit
   screen -d -m ~/autossh/autossh.sh $CONFIG
done

