# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
 bundle config set frozen false

run Rails.application
