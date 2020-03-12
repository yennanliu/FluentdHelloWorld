#!/bin/sh

# stop agent
echo ">>> stop agent"
sudo launchctl unload /Library/LaunchDaemons/td-agent.plist

# start agent
echo ">>> start agent"
sudo launchctl load /Library/LaunchDaemons/td-agent.plist

# check the log
echo ">>> check log"
tail -n 3 /var/log/td-agent/td-agent.log

# post test data
curl -X POST -d 'json={"json":"message"}' http://localhost:8888/debug.test

# Check the log
echo ">>> check log with input"
tail -n 3 /var/log/td-agent/td-agent.log