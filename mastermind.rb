# frozen_string_literal: true

require './game'
def display
  puts "Welcome to MasterMind!

    This is a codebreaking game with two players

    Today you will play against the computer as either the CodeMaker or CodeBreaker

    The CodeBreaker will be given 12 attempts to guess the code set by the CodeMaker

    May the odds be in your favour. \n"

end

display
Game.new.make_or_break
