#!/bin/sh

# 1) Install fluentd Mac OSX]

# methid 1 via gem 
# https://docs.fluentd.org/installation/install-by-gem
gem install fluentd --no-ri --no-rdoc
# run 
fluentd --setup ./fluent
fluentd -c ./fluent/fluent.conf -vv &
echo '{"json":"message"}' | fluent-cat debug.test

# method 2 : via td-agent
# https://docs.fluentd.org/installation/install-by-dmg

# 2) Install fluentd UI Mac OSX (DEV)
gem install -V fluentd-ui
fluentd-ui start

# 3) Stop the fluentd daemon
sudo pkill -f fluentd  