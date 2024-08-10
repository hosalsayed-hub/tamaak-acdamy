#!/usr/bin/env bash
# exit on error
bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean

bundle exec rails db:migrate --tracee
bundle exec rails db:seed
