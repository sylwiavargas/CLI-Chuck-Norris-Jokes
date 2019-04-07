require 'rest-client'
require 'json'
require 'pry'
require_relative 'command_line_interface.rb'
require_relative 'api_giphs.rb'

def valid_json?(string)
  !!JSON.parse(RestClient.get(string))
rescue JSON::ParserError
  false
end

def random_quote
  cn_api = JSON.parse(RestClient.get("https://api.chucknorris.io/jokes/random"))
  result = cn_api["value"]
  puts "\n#{result}"
end

def get_cn_api(word)
  url = "https://api.chucknorris.io/jokes/search?query=#{word}"
  word == "random" ? random_quote :
    if valid_json?(url)
      cn_api = JSON.parse(RestClient.get(url))
      num = rand(0...10)
      result = cn_api["result"][num]["value"]
        binding.pry
      puts "\n#{result}"
    else
      puts "There are no Chuck Norris quotes for that word"
      try_again?
    end
  repeat?
end


binding.pry
