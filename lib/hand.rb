require_relative 'deck'

class Hand
  attr_accessor :hand

  def initialize
    @deck = Deck.new
  end


  def calculate_hand
    total = 0
    ace = 0

    @cards.each do |card|
      if card.include?("J") || card.include?("Q")
        total += 10
      elsif
        card == "A" && total > 10
        ace += 1
      elsif
        card == "A" && total < 11
        total += 11
      else
        total += (card.delete("^0-9").to_i)
      end
    end
    return total
  end
end


  def hit
    card = @deck.deal
    @phand << card
    card
  end


  def player_hand
    @player_hand = []
    firstcard = @deck.deal
    secondcard = @deck.deal
    @player_hand << firstcard
    @player_hand << secondcard
  end


  def player_score
    score = 0

    @player.each do |card|
      score += card.value
    end
      score
  end


  def dealer_hand
    @dhand = []
    @dhand << @deck.deal
    @dhand << @deck.deal
  end


  def dealer_score
    score = 0

    @dealer.each do |card|
      score += card.value
    end
      score
  end


  def winner
    if dealer_score == 21
      puts "Dealer wins"
    elsif dealer_score > 21
      puts "Player wins"
    elsif player_score > dealer_score
      puts "Player wins"
    else
      "Dealer wins"
    end
  end
