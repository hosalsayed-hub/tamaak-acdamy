set -o errexit

bundle install
undle exec rails db:migrate