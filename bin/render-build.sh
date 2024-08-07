bundle install
bundle  exec ./bin/rails assets:precompile
bundle  exec ./bin/rails assets:clean
bundle  exec ./bin/rails db:migrate

