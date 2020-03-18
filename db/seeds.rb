# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'open-uri'

def handle_string_io_as_file(io, filename)
  return io unless io.class == StringIO
  file = Tempfile.new(["temp",".png"], encoding: 'ascii-8bit')
  file.binmode
  file.write io.read
  file.open
end

puts 'Destroying all nannies...'
Nanny.destroy_all

sleep(2)

puts 'Creating new nannies from Le Wagon alumni...'

sleep(2)


url_1 = "https://kitt.lewagon.com/placeholder/users/random"
alumni_1 = URI.open(url_1)

url_2 = "https://kitt.lewagon.com/placeholder/users/random"
alumni_2 = URI.open(url_2)

url_3 = "https://kitt.lewagon.com/placeholder/users/random"
alumni_3 = URI.open(url_3)

url_4 = "https://kitt.lewagon.com/placeholder/users/random"
alumni_4 = URI.open(url_4)

url_5 = "https://kitt.lewagon.com/placeholder/users/random"
alumni_5 = URI.open(url_5)

url_6 = "https://kitt.lewagon.com/placeholder/users/random"
alumni_6 = URI.open(url_6)

url_7 = "https://kitt.lewagon.com/placeholder/users/random"
alumni_7 = URI.open(url_7)

url_8 = "https://kitt.lewagon.com/placeholder/users/random"
alumni_8 = URI.open(url_8)

url_9 = "https://kitt.lewagon.com/placeholder/users/random"
alumni_9 = URI.open(url_9)

url_10 = "https://kitt.lewagon.com/placeholder/users/random"
alumni_10 = URI.open(url_10)


user_1 =
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    name: Faker::Internet.username
)

user_2 =
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    name: Faker::Internet.username
)

user_3 =
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    name: Faker::Internet.username
)

user_4 =
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    name: Faker::Internet.username
)

user_5 =
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    name: Faker::Internet.username
)

user_6 =
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    name: Faker::Internet.username
)

user_7 =
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    name: Faker::Internet.username
)

user_8 =
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    name: Faker::Internet.username
)

user_9 =
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    name: Faker::Internet.username
)

user_10 =
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    name: Faker::Internet.username
)

nanny_1 =
  Nanny.create(
    user: user_1,
    price_per_hour: rand(10..45),
    description: Faker::Superhero.name,
    age: rand(18..60),
    city: Faker::Nation.capital_city)

nanny_1.photo.attach(io: handle_string_io_as_file(alumni_1, 'image.png'), filename: "Student 1", content_type: 'image/png')

nanny_2 =
  Nanny.create(
    user: user_2,
    price_per_hour: rand(10..45),
    description: Faker::Superhero.name,
    age: rand(18..60),
    city: Faker::Nation.capital_city)

nanny_2.photo.attach(io: handle_string_io_as_file(alumni_2, 'image.png'), filename: "Student 2", content_type: 'image/png')

nanny_3 =
  Nanny.create(
    user: user_3,
    price_per_hour: rand(10..45),
    description: Faker::Superhero.name,
    age: rand(18..60),
    city: Faker::Nation.capital_city)

nanny_3.photo.attach(io: handle_string_io_as_file(alumni_3, 'image.png'), filename: "Student 3", content_type: 'image/png')


nanny_4 =
  Nanny.create(
    user: user_4,
    price_per_hour: rand(10..45),
    description: Faker::Superhero.name,
    age: rand(18..60),
    city: Faker::Nation.capital_city)

nanny_4.photo.attach(io: handle_string_io_as_file(alumni_4, 'image.png'), filename: "Student 4", content_type: 'image/png')


nanny_5 =
  Nanny.create(
    user: user_5,
    price_per_hour: rand(10..45),
    description: Faker::Superhero.name,
    age: rand(18..60),
    city: Faker::Nation.capital_city)

nanny_5.photo.attach(io: handle_string_io_as_file(alumni_5, 'image.png'), filename: "Student 5", content_type: 'image/png')


nanny_6 =
  Nanny.create(
    user: user_6,
    price_per_hour: rand(10..45),
    description: Faker::Superhero.name,
    age: rand(18..60),
    city: Faker::Nation.capital_city)

nanny_6.photo.attach(io: handle_string_io_as_file(alumni_6, 'image.png'), filename: "Student 6", content_type: 'image/png')


nanny_7 =
  Nanny.create(
    user: user_7,
    price_per_hour: rand(10..45),
    description: Faker::Superhero.name,
    age: rand(18..60),
    city: Faker::Nation.capital_city)

nanny_7.photo.attach(io: handle_string_io_as_file(alumni_7, 'image.png'), filename: "Student 7", content_type: 'image/png')


nanny_8 =
  Nanny.create(
    user: user_8,
    price_per_hour: rand(10..45),
    description: Faker::Superhero.name,
    age: rand(18..60),
    city: Faker::Nation.capital_city)

nanny_8.photo.attach(io: handle_string_io_as_file(alumni_8, 'image.png'), filename: "Student 8", content_type: 'image/png')


nanny_9 =
  Nanny.create(
    user: user_9,
    price_per_hour: rand(10..45),
    description: Faker::Superhero.name,
    age: rand(18..60),
    city: Faker::Nation.capital_city)

nanny_9.photo.attach(io: handle_string_io_as_file(alumni_9, 'image.png'), filename: "Student 9", content_type: 'image/png')


nanny_10 =
  Nanny.create(
    user: user_10,
    price_per_hour: rand(10..45),
    description: Faker::Superhero.name,
    age: rand(18..60),
    city: Faker::Nation.capital_city)

nanny_10.photo.attach(io: handle_string_io_as_file(alumni_10, 'image.png'), filename: "Student 10", content_type: 'image/png')

puts 'Finished!'
