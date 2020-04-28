#!/usr/bin/env bash
sed -n s'/^PRETTY_NAME="//p' /etc/os-release | sed s'/"$//'
#eof
