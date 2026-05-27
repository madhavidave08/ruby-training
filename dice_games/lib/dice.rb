# frozen_string_literal: true

class Dice
  # frozen_string_literal: true
    attr_reader :values
  def roll(number_of_dice = 1)
      @values = Array.new(number_of_dice) { rand(1..6) }
    end
end
