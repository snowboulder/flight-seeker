# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# rake db:setup

# Auto populate Airport model with city names using Faker gem
99.times do |n|
  name  = Faker::Address.city
  Airport.create!(name:  name)
end

# Auto populate Flight model using Faker gem
99.times do |f|
  from_airport_id = "#{f+1}"
  to_airport_id = "#{f+2}"
  duration = "#{(f+1)*10000}"
  date = Faker::Date.forward(f+11)
  capacity = "#{f+150}"
  Flight.create!(from_airport_id: from_airport_id,
                 to_airport_id: to_airport_id,
                 duration: duration,
                 date: date,
                 capacity: capacity)
end
