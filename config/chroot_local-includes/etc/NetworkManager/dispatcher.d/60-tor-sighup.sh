#! /bin/sh

# Run whenever an interface gets "up", not otherwise:
if [[ $2 != "up" ]]; then
   exit 0
fi

PIDFILE=/var/run/tor/tor.pid

if [ -r "${PIDFILE}" ]; then
    # Send a SIGHUP to Tor. According to its man page this should make Tor
    # fetch a new directory, which might help speed up bootstrapping that might
    # get stuck in case the network isn't up when Tor starts.
    kill -HUP $(cat ${PIDFILE})
else
    /etc/init.d/tor start
fi