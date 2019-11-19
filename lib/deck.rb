require 'forwardable'


class Deck
  attr_reader :cards
  attr_accessor :set

  extend Forwardable

  def_delegators :set, :suites, :ranks, :new_card

  def initialize(set)
    @cards = []
    @set = set
  end

  def build
    suites.each do |suite|
      ranks.each do |rank|
        @cards << new_card(suite, rank)
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


