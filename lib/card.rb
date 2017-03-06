class Card
  def initialize
    @card = [rank,  suit]
  end

  def face_card
    if @card == 'J' || @card == 'Q' || @card == 'K'
      true
    else
      false
    end
  end

  def ace
    if @card == 'A'
      true
    else
      false
    end
  end

  def value
    if @card == 'J' || @card == 'Q' || @card == 'K'
      @card == 10
    elsif @card == 'A'
      @card == 11
    else
      @card.to_i
    end
  end

  def show_card
    @card
  end
end 
