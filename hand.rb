
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

  def value
    @cards.sum { |card| card.big_value }
  end

  def game_value
    @cards.sum { |card| card.game_value }
  end

  def pair?
  end

  def pair_value
  end

end
