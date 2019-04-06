def welcome
  puts "Howdy, partner!"
end

def get_query_from_user
  puts "\nWhat's your fav word?"
  puts 'For a random quote, type "random"'
  #use gets to capture the user's input, downcased.
  gets.chomp.downcase
end

def check_repeat
  word = gets.chomp.downcase
  if word == "no"
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
