# frozen_string_literal: true

module Message
  def self.display_intro
    intro_message
  end

  def self.player_input
    loop do
      user_input = gets.chomp
      verified = verify_input(user_input.to_i) if user_input.match?(/^\d$/)
      return verified if verified

      puts "\n\e[31mInvalid Input!\e[0m Please choose between the choices"
    end
  end

  def self.clear_screen
    print "\e[2J\e[f"
  end

  def self.intro_message
    puts <<~INTRO

      CHESS

      \e[32m[1]\e[0m Start new game
      \e[32m[2]\e[0m Load saved game
      \e[31m[3]\e[0m Quit

    INTRO
  end

  def self.verify_input(input)
    return input if input.between?(1, 3)
  end
end
