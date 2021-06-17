Traveler.destroy_all
Location.destroy_all
Trip.destroy_all

10.times do
  Traveler.create(name: Faker::Name.name)
end

10.times do
  Location.create(name: Faker::Address.city )
end


100.times do
  Trip.create(traveler: Traveler.all.sample, location: Location.all.sample, distance: rand(10..2000) )
end