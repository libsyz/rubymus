
require_relative 'spanish_set'

class Deck
  attr_reader :cards
  # responsibilities of the deck
  # composing itself with cards
  # shuffling itself

  def initialize(set)
    @cards = []
    @set = set
  end

  def build
    @set.suites.each do |suite|
      @set.ranks.each do |rank|
        @cards << @set.new_card(suite, rank)
      end
    end
  end


  def shuffle
    @cards.shuffle!
  end

  def inspect
    puts @cards
  end

end


deck = Deck.new(SpanishSet.new)


deck.build
deck.inspect
deck.shuffle
puts "##"
deck.inspect
