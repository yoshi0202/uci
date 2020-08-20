#!/bin/bash
cd /opt/src/app
rm -rf tmp/pids/server.pid
rails s -b 0.0.0.0