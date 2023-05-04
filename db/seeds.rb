# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Dog.destroy_all
Dogsiter.destroy_all
City.destroy_all
Stroll.destroy_all

10.times do 
user = City.create!(city_name: Faker::Address.unique.city)
end 

current_cities = City.ids

30.times do
  user = Dogsiter.create!(name: Faker::Name.unique.name, city_id: current_cities.sample)
  dog = Dog.create!(name: Faker::Superhero.unique.name, city_id: current_cities.sample)
end

current_dogs = Dog.ids
current_strolls = Stroll.ids
current_dogsiters = Dogsiter.ids

30.times do 
  user = Stroll.create!(date: Faker::Date.in_date_period, dogsiter_id: current_dogsiters.sample)
end 

40.times do
 user = JoinTableDogStroll.create!(
   dog_id: current_dogs.sample, 
   stroll_id: current_strolls.sample)
end 