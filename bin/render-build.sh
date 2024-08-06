#!/usr/bin/env bash
# exit on error
 rails db:drop
 rails db:create
 rails db:migrate
 rails db:seed
