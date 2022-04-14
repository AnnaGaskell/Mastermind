# frozen_string_literal: true

class Player
  attr_reader :guess_array, :code

  def initialize
    @guess_array = []
    @code = []
  end

  def player_guess
    puts 'Input each of your guesses and hit enter between each'
    puts 'Choose from the following options: Red, orange, yellow, green, blue and violet'
    4.times do
      @guess_array.push(gets.chomp)
    end
    puts "\nYour guess is #{@guess_array}"
  end

  def clear_guess
    @guess_array = []
  end

  def player_code_input
    puts "Please enter your secret code made of four colors..."
    puts "Choose from the following choices then hit the enter key: Red, orange, yellow, green, blue and violet"
    4.times do
      @code.push(gets.chomp)
    end
    puts "Yours secret code is #{@code}"
    @code
  end
end
