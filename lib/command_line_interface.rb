def welcome
  puts "Howdy, partner! Welcome to Chuck Norris Jokes Kingdom."
end

def get_query_from_user
  puts "\nTell me your fav word to get a joke."
  puts '   psssst. for a random joke, type "random"'
  gets.chomp.downcase
end

def check_repeat
  word = gets.chomp.downcase
  word == "no"
    puts "Goodbye!"
    exit
  elsif word == "yes" || word == "sure"
    word = get_query_from_user
    get_cn_api(word)
  elsif word == "maybe"
    puts "Make up your mind!"
    check_repeat
  else
    puts 'Please type "yes" or "no"'
    check_repeat
  end
end

def repeat?
  puts "\nWould you like to see another quote?"
  check_repeat
end

def try_again?
  puts "\nWould you like to try again?"
  check_repeat
end
