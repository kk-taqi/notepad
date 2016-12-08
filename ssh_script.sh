#!/bin/bash
echo `clear`
SERVER1="1.) AWS Frankfurt"
SERVER2="2.) TBD"
#echo -e "Please choose a server:"
echo $SERVER1
echo $SERVER2
echo -e "Please choose a server:"
read server
echo -e "You choose Server $server"
if [ $server -eq 1 ]; then
        serverconnect="ec2-user@sample.amazonaws.com"
        servername="sample.compute.amazonaws.com"
        serveruser="ec2-user"
        serverkey="./aws.pem.sample"
else

        if [ $server -eq 2 ]; then
                serverconnect="username2@server1.com"
                servername="server1.com"
                serveruser="username2"
        fi
fi

ssh -i "$serverkey" -t "$serverconnect"
