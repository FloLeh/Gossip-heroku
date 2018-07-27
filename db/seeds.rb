# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times{City.create!(name:Faker::Pokemon.location,postal_code:rand(1..95))}
10.times{User.create!(first_name:Faker::LeagueOfLegends.champion,last_name:Faker::GameOfThrones.house,description:Faker::GameOfThrones.quote,email:Faker::RickAndMorty.character+'@example.com',age:rand(15..55),city_id:rand(1..10))}
20.times{Gossip.create!(title:Faker::Food.dish,content:Faker::Pokemon.move,user_id:rand(1..10))}
10.times{Tag.create!(title:Faker::LeagueOfLegends.summoner_spell,gossip_id:rand(1..10))}
50.times{Like.create!(user_id:rand(1..10),gossip_id:rand(1..10))}
20.times{Comment.create!(content:Faker::LeagueOfLegends.quote ,user_id:rand(1..10),gossip_id:rand(1..10))}
20.times{SubComment.create!(content:Faker::Pokemon.name ,subcom_id:rand(1..10),subcom_type: User)}
1.times{PrivateMessage.create!(content:Faker::GameOfThrones.quote,recipient_id:rand(1..10),sender_id:rand(1..10))}