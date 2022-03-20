Recipe.destroy_all

puts "creating DB seeds"

photos = [
  file:///Users/kathleenthorpe/Desktop/Screenshot%202022-03-20%20at%2015.00.08.png
  file:///Users/kathleenthorpe/Desktop/Screenshot%202022-03-20%20at%2015.00.03.png
  file:///Users/kathleenthorpe/Desktop/Screenshot%202022-03-20%20at%2014.59.57.png
  file:///Users/kathleenthorpe/Desktop/Screenshot%202022-03-20%20at%2014.59.27.png
  file:///Users/kathleenthorpe/Desktop/Screenshot%202022-03-20%20at%2015.00.15.png
]

5.times do
  Recipe.create!(
    name: Faker::Food.dish,
    description: "something about the recipe goes right around here somewhere",
    prep_time: rand(1..5),
    rating: rand(1..5)
  )

  file1 = URI.open(photos.sample)
  recipe.photo.attach([{ io: file1, filename: recipe.name, content_type: 'image/png' },
])
end

puts "finished DB seeds"
