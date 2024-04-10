# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require_relative 'seed_bag'
include SeedBag

if ! User.find_by(email: 'delete.me@dummy.com')
  User.new(email: 'delete.me@dummy.com', password: 'OrBeHacked', password_confirmation: 'OrBeHacked', role: 'admin').save
end

case Rails.env
when 'production'
  SeedBag.prod_seeds
when 'development'
  SeedBag.dev_seeds
end

