require 'rspec'

class RPS
  attr_writer :rand_seed

  def initialize(guess:)
    @guess = guess.downcase
  end

  def randomisation_algorithm
    rand 2342343
  end

  def computer_guess
    srand(@rand_seed || randomisation_algorithm)
    computer_guesses = %w{rock paper scissors}
    computer_guesses.sample
  end

  def winner_is
    if rule_engine[computer_guess.to_sym].include? @guess
        'Computer wins'
    elsif rule_engine[@guess.to_sym].include? computer_guess
        'You win'
    else
        'Tie'
    end
  end

  def rule_engine
    {
        'rock': ['scisors'],
        'paper': ['rock'],
        'scissors': ['paper']
    }
  end
end

# rps = RPS.new(guess: "Rock")
# p rps.computer_guess
# p rps.winner_is
