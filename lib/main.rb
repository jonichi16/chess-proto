require './lib/utility/message'
require './lib/chess'

def play
  Message.display_intro
  print 'Please type the number of your choice: '
  player_choice = Message.player_input
  case player_choice
  when 1
    Message.clear_screen
    start_new_game
  when 2
    # method for loading game
    Message.clear_screen
    puts 'Loading game'
  else
    Message.clear_screen
    puts 'Thank you for playing'
  end
end


def start_new_game
  Chess.new
  puts 'Chess game created'
end

play