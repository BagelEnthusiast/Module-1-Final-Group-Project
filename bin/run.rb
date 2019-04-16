require_relative '../config/environment'
require 'tty'
require 'pry'
require_all 'app'

# $teletype new app


#$prompt = TTY::Prompt.new
$prompt = TTY::Prompt.new
#$prompt.ask('What is your name?', default: ENV['USER'])

puts "\e[H\e[2J"

menu_choice()

#prompt.ask('What is your name?', default: ENV['USER'])
#binding.pry
0