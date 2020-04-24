# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Itinerary.destroy_all
Activity.destroy_all

# u1 = User.create(username: "adam")

# i1 = Itinerary.create(user_id: u1.id, name: "My Trip")

# a1 = Activity.create(itinerary_id: i1.id, name: "Touring")