require_relative 'deck'
require_relative 'hand'

class Card
  attr_accessor :suit, :value
  def initialize (value, suit)
    @value = value
    @suit = suit
  end
end
