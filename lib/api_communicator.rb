# when [:value] and ["value"]

require 'rest-client'
require 'json'
require 'pry'

def get_cn_api(word)
  query = word
  cn_api = JSON.parse(RestClient.get("https://api.chucknorris.io/jokes/search?query=#{query}"))
  result = cn_api["result"][0]["value"]
  puts result
end


#
# def list_of_films(character_hash)
#   character_hash["films"].collect do |url|
#     JSON.parse(RestClient.get(url))
#   end
# end

# binding.pry



#
# def get_characters(url)
#   characters_list = RestClient.get(url)
#   JSON.parse(characters_list)
# end
#
# def list_of_films(character_hash)
#   character_hash["films"].collect do |url|
#     JSON.parse(RestClient.get(url))
#   end
# end
#
#
# def get_character_movies_from_api(character_name)
#
#   counter = 1
#   characters = get_characters("http://www.swapi.co/api/people/?page=#{counter}")
#
#     while characters
#     characters["results"].each do |character_hash|
#       if character_hash["name"].downcase == character_name
#         return list_of_films(character_hash)
#       end
#   end
#     if characters["next"]
#       characters = get_characters(characters["next"])
#     else characters = nil
#   end
# end
#    counter += 1
# end
#
#
# def print_movies(films_hash)
#   # some iteration magic and puts out the movies in a nice list
#   counter = 1
#     puts "Oh, right. Here you can see this fellow:"
#   films_hash.each do |film|
#     puts " "
#     puts "#{counter}. #{film['title']}"
#     puts "(dir. #{film['director']}, #{film['release_date'][0..3]})"
#     puts " "
#     puts "✨ ✨ ✨ ✨ ✨"
#     counter += 1 # counter = counter + 1
#   end
#         puts "May the force be with you!"
# end
#
# def show_quotes(quote)
#   films_hash = get_character_movies_from_api(character)
#   print_movies(films_hash)
# end
