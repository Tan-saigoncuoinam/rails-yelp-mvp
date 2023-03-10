# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# generate 5 restaurants
def create_random_restaurant(number_of_restaurants)
  number_of_restaurants.times do
    name = Faker::Restaurant.name
    address = Faker::Address.full_address
    phone_number = Faker::PhoneNumber.phone_number
    category = %w[chinese italian japanese french belgian].sample
    Restaurant.create(name: name, address: address, phone_number: phone_number, category: category)
  end
end
create_random_restaurant(5)
