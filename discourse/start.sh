#!/usr/bin/env bash
trap 'ret=$?; test $ret -ne 0 && printf "failed\n\n" >&2; exit $ret' EXIT
set -e
log_info() {
  printf "\n\e[0;35m $1\e[0m\n\n"
}
log_info "Installing Postgres ..."
  service postgresql status || sudo -E service postgresql start
  sudo -u postgres createuser -s root || true
cd /discourse
bin/rails db:create 
bin/rails db:migrate
if [ -f "/discourse/tmp/pids/unicorn.pid" ]; then
  rm /discourse/tmp/pids/unicorn.pid
fi
RAILS_ENV=test bin/rails db:create db:migrate
DISCOURSE_HOSTNAME=0.0.0.0 UNICORN_LISTENER=0.0.0.0:3000 bin/ember-cli -u
