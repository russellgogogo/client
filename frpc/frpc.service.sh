#!/bin/sh /etc/rc.common
# "new(er)" style init script
# Look at /lib/functions/service.sh on a running system for explanations of what other SERVICE_
# options you can use, and when you might want them.

START=150
ROOT=/etc/config/frpc
SERVICE_WRITE_PID=1
SERVICE_DAEMONIZE=1

start() {
  service_start /usr/bin/frpc -c /etc/config/frpc/frpc.ini
}

stop() {
  service_stop killall frpc
}

