#!/usr/bin/env ruby
require_relative "../lib/api_communicator.rb"
require_relative "../lib/command_line_interface.rb"
require_relative "../lib/api_giphs.rb"

welcome
word = get_query_from_user
get_cn_api(word)
