#!/usr/bin/env bash
# exit on error
bundle install

bundle exec rails db:seed  --trace
