require_relative 'card'

class Deck
  attr_accessor :cards

  SUITS = ['♦', '♣', '♠', '♥']
  RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']

  def initialize
    @deck = build_deck
  end

  def build_deck
    @deck = []

    SUITS.each do |suit|
      RANKS.each do |rank|
        card = Card.new(rank, suit)
        @deck << card
      end
    end
    @deck.shuffle!
  end

  def deal(num)
    cards.pop(num)
  end
end
