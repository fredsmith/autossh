# autossh

## Installation

check out git repository to ~/autossh

## Configuration

copy sample.config to yourname.tunnel, and edit to configure remotehost, remoteuser and tunnel arguments

for tunnel arguments: 
 - use -R for ports on the remotehost to map to services running on the network that autossh is running on.  
 - use -L for services on the remote network to map to ports on the system running autossh.

You can put as many .tunnel files as you'd like in your autossh directory, they will all be kept running.

## Setup crontab

`* * * * *	~/autossh/launchssh.sh`

## System-wide config

If you want your remote ports to be able to accept connections from the world, you'll probably need to enable GatewayPorts in your *remote* /etc/ssh/sshd\_config file.  

add the following line:

`GatewayPorts yes`

and:

`service sshd restart`


