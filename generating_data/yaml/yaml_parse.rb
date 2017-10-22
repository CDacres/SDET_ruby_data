require 'yaml'

user_cred = YAML.load_file('user_credentials.yml')

# puts user_cred['user1']['username']

env = YAML.load_file('environments.yml')

p env['Staging'][0]
