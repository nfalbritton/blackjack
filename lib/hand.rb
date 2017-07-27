require_relative 'deck'
require_relative 'card'

  class Hand
    attr_reader :cards

    def initialize(cards)
      @cards = cards
    end

    def calculate_hand
      total = 0
      #This method should add 2 cards together and return the value of the hand.
      @cards.each do | card |
        if (card.value == "J" ||
            card.value == "K" ||
            card.value == "Q")
              total += 10
        elsif card.value == "A"
          if total < 11
             total += 11
          else
             total += 1
          end
        else
          total += (card.value.to_i)
        end
      end
      return total
     end
   end
