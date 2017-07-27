require_relative 'hand'
require_relative 'card'
require "pry"
class Deck
  SUITS = ['♦', '♣', '♠', '♥']
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
  attr_accessor :cards
  def initialize
    @cards = build_deck
  end
  def build_deck
    @cards = []
    SUITS.each do |suit|
      VALUES.each do |value|
        @cards.push(Card.new(value,suit))
      end
    end
    @cards.shuffle!
  end
  def deal(num, person)
    return_cards = []
    num.times do
    card = @cards.shift
    return_cards.push(card)
    end
    return_cards.each do |card|
      puts ("The #{person} cards are #{card.value}#{card.suit} ")
    end
    return return_cards
  end
end
