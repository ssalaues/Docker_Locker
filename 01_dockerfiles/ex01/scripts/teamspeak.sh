#!/bin/sh
### BEGIN INIT INFO
# Provides: teamspeak
# Required-Start: $local_fs $network
# Required-Stop: $local_fs $network
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Description: Teamspeak 3 Server
### END INIT INFO

USER="teamspeak"
DIR="/home/teamspeak/teamspeak3-server_linux-amd64"
###### Teamspeak 3 server start/stop script ######
case "$1" in
start)
"$DIR/ts3server_startscript.sh start"
;;
stop)
"$DIR/ts3server_startscript.sh stop"
;;
restart)
"$DIR/ts3server_startscript.sh restart"
;;
status)
"$DIR/ts3server_startscript.sh status"
;;
*)
echo "Usage: " >&2
exit 1
;;
esac
exit 0
