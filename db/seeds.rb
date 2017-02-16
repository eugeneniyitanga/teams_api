100.times do 
  Team.create(
    creature: Faker::Team.creature,
    name: Faker::Team.name, 
    state: Faker::Team.state,
    sport: Faker::Team.sport
  )
end 
