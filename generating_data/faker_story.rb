require 'faker'

character_hp = Faker::HarryPotter.character
character_friends = Faker::Friends.character
character_rick = Faker::RickAndMorty.character
location_hp = Faker::HarryPotter.location
location_friends = Faker::Friends.location
quote_hp = Faker::HarryPotter.quote
quote_rp = Faker::RuPaul.quote
quote_friends = Faker::Friends.quote
quote_rick = Faker::RickAndMorty.quote

puts "#{character_hp} was at #{location_friends} with #{character_friends} and said '#{quote_hp}', to which they said '#{quote_rp}'. Suddenly, #{character_rick} showed up, exclaiming '#{quote_rick}'. They all agreed and said unison '#{quote_friends}'."
