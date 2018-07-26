# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do
  city = City.create(city_name: Faker::Address.city)
end

10.times do
  dogsitters = Dogsitter.create(city_id: rand(1..30), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

10.times do
  dogs = Dog.create(city_id: rand(1..30), dog_name: Faker::Dog.name, race: Faker::Dog.breed)
end

30.times do
  stroll = Stroll.create(city_id: rand(1..30), dog_id: rand(1..30), dogsitter_id: rand(1..30), date: Faker::Date.between(2.days.ago, Date.today), meeting_point: Faker::Address.street_name)
 end

