#! /bin/sh
export RAILS_MASTER_KEY=156b79bf477a833d17c5b318bfa1d3c5
export NEW_RELIC_AGENT_ENABLED=false 
export RAILS_ENV=development 
export RAILS_MAX_THREADS=5
./bin/puma -C config/puma.rb
