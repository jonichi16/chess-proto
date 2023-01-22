# frozen_string_literal: true

require './lib/utility/message'
require './lib/chess'

def play
  Message.display_intro
  print 'Please type the number of your choice: '
  player_choice = Message.player_input
  Message.clear_screen
  option(player_choice)
end

def option(choice)
  case choice
  when 1
    start_new_game
  when 2
    # method for loading game
    puts 'Loading game'
  else
    puts 'Thank you for playing'
  end
end

def start_new_game
  game = Chess.new
  game.play_game
end

play
