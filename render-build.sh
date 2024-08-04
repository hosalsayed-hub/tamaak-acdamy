set -o errexit

bundle install
rails db:migrate