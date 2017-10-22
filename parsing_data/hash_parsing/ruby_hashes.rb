skyscraper_ground_floor = {lobby: 'reception'}

# p skyscraper_ground_floor[:lobby]

# skyscraper_first_floor = {
#   braindrugs: 'drugs',
#   aqualand: 'LSD factory',
#   unicorns: 'dreams'
# }

#DON"T DO THIS! PICK ONE HASH FORMAT
skyscraper_first_floor = {
  "braindrugs" => 'drugs',
  "aqualand" => {
    prod1: 'LSD factory',
    prod2: 'big doobies'
  },
  "unicorns" => ['dreams', 'icecreams']
}

# p skyscraper_first_floor['unicorns'][0]
p skyscraper_first_floor['aqualand'][:prod1]

# p skyscraper_first_floor[:unicorns]

# puts skyscraper_first_floor.keys

# skyscraper_first_floor.each do |key, value|
#   puts value
# end
