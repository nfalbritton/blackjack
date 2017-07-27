require_relative "card"
require_relative "deck"
require_relative "hand"

player_cards = []
dealer_cards = []
cards = Deck.new

player_cards = cards.deal(2, "player")
dealer_cards = cards.deal(2, "dealer")
player_hand = Hand.new(player_cards)
dealer_hand = Hand.new(dealer_cards)
playing_game = true

while playing_game
  puts ("Your current score is #{player_hand.calculate_hand}")
  puts ("Hit (H) or Stand (S)?")
  answer = gets.chomp.upcase
    if answer == "H"
      player_card = cards.deal(1,"player")[0]
      player_hand.cards.push(player_card)
        if player_hand.calculate_hand > 21
          puts ("Bust, sorry you lost")
          playing_game = false
        end
        elsif answer == "S" && playing_game
         while (dealer_hand.calculate_hand) < 17 do
           dealer_card = cards.deal(1,"dealer")[0]
           dealer_hand.cards.push(dealer_card)
           puts ("Dealer has #{dealer_hand.calculate_hand}")
         end
         if dealer_hand.calculate_hand > 21
           puts("Dealer Bust! You won!!")
           playing_game = false
         else
          playing_game = false
          if dealer_hand.calculate_hand > player_hand.calculate_hand
            puts ("Dealer won")
          elsif dealer_hand.calculate_hand == player_hand.calculate_hand
            puts ("We're tied! Tie Goes to Dealer")
          else
            puts "You won!!"
          end
       end
     end
   end
