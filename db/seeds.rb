# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.create!(email: "test3@example.com", password: "j"*9)

Flat.create!([
  { title: 'Studio', description: 'Petit', address: '25 rue du petit musc', city: 'Paris', availability: 'yes', capacity: 1, price: 30, user: user },
  { title: 'Villa', description: 'Grand', address: '12 place eduardo', city: 'Barcelone', availability: 'yes', capacity: 5, price: 300, user: user }
])



