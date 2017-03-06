require_relative 'card'
require_relative 'deck'
require_relative 'hand'

class Blackjack
  def initialize
    @player = Hand.new
    @dealer = Hand.new
    @deck = Deck.new
    deal
  end

  def deal
    puts "Welcome to Blackjack"
    hand.player_hand
    player_turn
    dealer_turn
  end


  def player_turn
    print 'Hit or Stand(H/S):'
    player_choice = gets.chomp

    if player_choice == 'h'
      hand.hit
    else
      hand.player_hand
      hand.player_score
    end
  end


  def dealer_turn
    hand.dealer_hand
    hand.winner
  end
end 
