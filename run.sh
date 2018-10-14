#!/bin/sh
set -e

echo Starting rsyslog service...
service rsyslog start

exec "$@"
