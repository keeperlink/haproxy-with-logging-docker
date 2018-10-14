#!/bin/sh
set -e

echo Starting rsyslog service...
service rsyslog start

#echo Starting haproxy service...
#./docker-entrypoint.sh
