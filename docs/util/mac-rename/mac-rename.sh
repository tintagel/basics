#!/bin/bash
# This utility takes a single argument which is the name you want to set for your Mac.
sudo scutil --set HostName $1
sudo scutil --set LocalHostName $1
sudo scutil --set ComputerName $1
dscacheutil -flushcache
