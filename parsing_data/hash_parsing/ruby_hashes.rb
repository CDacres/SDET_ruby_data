skyscraper_ground_floor = {lobby: 'reception'}

# p skyscraper_ground_floor[:lobby]

# skyscraper_first_floor = {
#   petshop: 'animals',
#   toyshop: 'lego',
#   unicorns: 'dreams'
# }

#DON"T DO THIS! PICK ONE HASH FORMAT
skyscraper_first_floor = {
  "petshop" => 'animals',
  "toyshop" => {
    prod1: 'lego',
    prod2: 'trains'
  },
  "unicorns" => ['dreams', 'icecreams']
}

# p skyscraper_first_floor['unicorns'][0]
p skyscraper_first_floor['toyshop'][:prod1]

# p skyscraper_first_floor[:unicorns]

# puts skyscraper_first_floor.keys

# skyscraper_first_floor.each do |key, value|
#   puts value
# end
