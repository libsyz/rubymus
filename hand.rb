
class MusHand
  attr_reader :deck, :cards

  def initialize(deck)
    @deck = deck
    @cards = []
  end

  def served?
    cards.count == 4
  end

  def take_card
    cards << deck.cards.pop
  end

end
