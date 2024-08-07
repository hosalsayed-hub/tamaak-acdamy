bundle install
bundle  exec ./bin/rails db:drop
bundle  exec ./bin/rails db:create
bundle  exec ./bin/rails db:migrate --trace

