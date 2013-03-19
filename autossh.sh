#! /bin/bash

if ! [ -f $1 ]; then
   exit 1;
fi

source $1

while /bin/true; do

ssh -t $TUNNELCONFIG $REMOTEUSER@$REMOTEHOST $REMOTECOMMAND;

sleep 5
done

