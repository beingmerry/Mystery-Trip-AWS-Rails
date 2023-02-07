puts "💫 Beginning trips seeding..."
Trip.create(destination:"Miami, FL", start_date:"2023-06-01", end_date:"2023-06-07", trip_review: "it's was amazing")
Trip.create(destination:"Africa", start_date:"2023-09-01", end_date:"2023-09-09", trip_review: "left a lot to be desired")
puts "🌞 Creating some Days"
Day.create(notes: "lots of things to do this day!", day_rating: nil, day_review: nil, weather_suggested: "sunny, above 50degF")
puts "📆 Adding some days to trips"
TripDay.create(trip: Trip.first, day: Day.first, review: "was more fun than previous reviews let on!")

puts "🛬 Seeding complete!"

