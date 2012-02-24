#! /bin/sh
TUNNELCONFIG="-R 9922:localhost:22 -R 9980:localhost:80 -N -i ~/.ssh/id_rsa.sshvpn -o ServerAliveInterval=60"
REMOTEUSER="sshvpn"
REMOTEHOST="remotehost.example.tld"


while /bin/true; do

ssh -t $TUNNELCONFIG $REMOTEUSER@$REMOTEHOST ;

sleep 5
done

