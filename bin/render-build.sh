#!/usr/bin/env bash
# exit on error
bundle install
bundle exec rails db:migrate --tracee
bundle exec rails db:seed
