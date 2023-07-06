#!/bin/sh

set -xe

envsubst < /tools/init_from.sql > /tools/init.sql

exec "$@"
