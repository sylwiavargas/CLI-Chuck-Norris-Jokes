def welcome
  puts "Howdy!"
end

def get_query_from_user
  puts "What's your fav word?"
  puts " "
  gets.chomp.downcase
  # use gets to capture the user's input. This method should return that input, downcased.
end
