# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "💫 Beginning trips seeding..."
Trip.create(destination:"Miami, FL", start_date:"2023-06-01", end_date:"2023-06-07")
Trip.create(destination:"Africa", start_date:"2023-09-01", end_date:"2023-09-09")
puts "🛬 Seeding complete!"