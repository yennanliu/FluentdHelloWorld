# FluentdHelloWorld

## INTRO
- dev

## Quick Start

```bash 
# STEP 1) 
# launch the fluentd agent (fluentd via td-agent)
sudo launchctl load /Library/LaunchDaemons/td-agent.plist

# check the log
less /var/log/td-agent/td-agent.log

# Step the fluentd agent 
sudo launchctl unload /Library/LaunchDaemons/td-agent.plist

# STEP 2)
# post to fluentd via http post
curl -X POST -d 'json={"json":"message"}' http://localhost:8888/debug.test
# Check the log
tail -n 1 /var/log/td-agent/td-agent.log

```

## Install
- Mac OSX 
	- https://docs.fluentd.org/installation/install-by-dmg