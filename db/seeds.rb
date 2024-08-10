# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'admin@gmail.com', password: 'Admin@123', password_confirmation: 'Admin@123')
User.create!(email: 'hosalsayed@gmail.com', password: 'Hussam@123', password_confirmation: 'Hussam@123')
User.create!(email: 'abdulla@gmail.com', password: 'Aa@123', password_confirmation: 'Aa@123')
