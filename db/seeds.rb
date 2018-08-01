# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

20.times{Gossip.create!(title:Faker::Food.dish,content:Faker::Pokemon.move,user_id:rand(1..10))}
20.times{Comment.create!(content:Faker::LeagueOfLegends.quote ,user_id:rand(1..10),gossip_id:rand(1..10))}
