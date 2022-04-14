# frozen_string_literal: true

class Computer
  attr_reader :code_guessed, :player_code_guessed

  COLOURS = %w[red orange yellow green blue violet].freeze
  @code_guessed = false
  @player_code_guessed = false

  def initialize
    @code = [COLOURS.sample, COLOURS.sample, COLOURS.sample, COLOURS.sample]
    @code_array = []
    COLOURS.each { |a| COLOURS.each { |b| COLOURS.each { |c| COLOURS.each { |d| @code_array.push([a, b, c, d]) } } } }
  end

  def code_match(code_guess)
    if @code == code_guess
      puts 'You broke the code!'
      @code_guessed = true
    else
      partial_match(@code, code_guess, true)
    end
  end

  def code_algorithm(code)
    code_guess = @code_array[rand(@code_array.length)]
    puts "The computers guess is #{@code_guess}"
    if code_guess == code
      puts 'The Computer broke your code!'
      @player_code_guessed = true
    else
      partial_match(code, code_guess, true)
      puts "\nPress enter for next computer guess"
      gets.chomp
    end
    @code_array.select! { partial_match(code, code_guess) == partial_match(c, code_guess) }
  end

  def partial_match(code, code_guess, should_print = false)
    match_array = code.map.with_index { |v, i| v ==  code_guess[i] }
    match = match_array.count(true)
    puts "Matches: #{match}" if should_print
    false_guesses = match_array.each_index.select { |i| match_array[i] == false }
    guess_no_match = false_guesses.map { |i| code_guess[i] }
    code_no_match = false_guesses.map { |i| code[i] }
    wrong_position = code_no_match.map do |item|
      guess_no_match.include?(item)
    end
    partial = wrong_position.count(true)
    puts "Partial Match: #{partial}" if should_print
      [match, partial]
  end
end
