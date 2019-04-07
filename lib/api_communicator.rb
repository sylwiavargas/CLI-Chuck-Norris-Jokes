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

def get_giph
  giph_url = get_giph_api
  system("open -a Safari #{giph_url}")
end

def random_quote
  cn_api = JSON.parse(RestClient.get("https://api.chucknorris.io/jokes/random"))
  result = cn_api["value"]
  puts "\n#{result}"
  get_giph
end

def get_cn_api(word)
  url = "https://api.chucknorris.io/jokes/search?query=#{word}"
  if word == "random"
    random_quote
  else
    if valid_json?(url)
      cn_api = JSON.parse(RestClient.get(url))
      result = cn_api["result"][0]["value"]
      puts "\n#{result}"
      get_giph
    else
      puts "There are no Chuck Norris quotes for that word"
      try_again?
    end
  end
  repeat?
end
