#!/usr/bin/env bash
set -e

# Use tmp mounted host .ssh for container root .ssh
rm -rf /root/.ssh
cp -R /tmp/.ssh /root/.ssh

# Leave the bash shell open for development
exec "$@"
cd /root/nerves && /bin/bash
