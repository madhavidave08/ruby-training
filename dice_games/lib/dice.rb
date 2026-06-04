# frozen_string_literal: true

class Dice
  # frozen_string_literal: true
    attr_reader :values
  def roll(number_of_dice = 1)
    @values =  number_of_dice.times.map { rand(1..6) }
    end
end
