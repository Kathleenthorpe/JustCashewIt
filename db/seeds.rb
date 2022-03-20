puts "creating DB seeds"

5.times do
  Recipe.create!(
    name: Faker::Food.dish,
    description: "something about the recipe goes right around here somewhere",
    prep_time: rand(1..5),
    rating: rand(1..5)
  )
end

puts "finished DB seeds"
