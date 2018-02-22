# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
	Person.create!(name: Faker::RuPaul.unique.queen, age: rand(10...90))
	Pet.create!(name: Faker::Zelda.unique.character, breed: Faker::Dog.breed, age: rand(1...10), person_id: rand(1...10) )

	party_time = Faker::Time.forward(23, :night)
	Party.create!(title: Faker::BossaNova.song, start_time: party_time, end_time: (party_time + 3600*2), pets_invited: Faker::Boolean.boolean )
end