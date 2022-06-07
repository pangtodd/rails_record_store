# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Album.destroy_all
album_id_array = []
10.times do |index|
  Album.create!(name: Faker::Superhero.power, genre: Faker::Lorem.word) 
      album_id_array.push(Album.last.id)                  
end

p "Created #{Album.count} albums"

p album_id_array

album_id_array.each do |num|
  7.times do |index|
  Song.create!(name: Faker::Superhero.name,lyrics: Faker::Lorem.paragraph_by_chars(number: 50), album_id: num)   
  end
end

p "Created #{Song.count} songs"