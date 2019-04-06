#!/usr/bin/env ruby
require_relative "../lib/api_communicator.rb"
require_relative "../lib/command_line_interface.rb"
require_relative "../lib/api_giphs.rb"

require 'open-uri'


welcome
word = get_query_from_user
get_cn_api(word)
keyword="chuck+norris"
url = get_giph_api(keyword)
system("open -a Safari #{url}")
