# frozen_string_literal: true
require './computer'
require './player'

class Game
  def initialize
    @computer = Computer.new
    @player = Player.new
  end

  def make_or_break
    puts "\nWould you like to be CodeMaker or CodeBreaker?"
    puts "\nPlease type either make or break"
    answer = gets.chomp.downcase
    until answer.match?(/^make$|^break$/)
      puts "Please try again - Type either make or break"
      answer = gets.chomp.downcase
    end
    if answer == 'break'
      player_codebreaker
    else
      player_codemaker
    end
  end

  def player_codemaker
    code = @player.player_code_input
    i = 12
    12.times do
      return if @computer.player_code_guessed
      puts "\n Computer as #{i} guesses left \n\n"
      @computer.code_algorithm(code)
      i -= 1
    end
  end

  def player_codebreaker
    i = 12
    12.times do
      return if @computer.code_guessed
      puts "\nYou have #{i} guesses left \n\n"
      @player.player_guess
      @computer.code_match(@player.guess_array)
      @player.clear_guess
      i -= 1
    end
  end
end


