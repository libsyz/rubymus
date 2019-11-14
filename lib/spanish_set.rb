
Card = Struct.new(:suite, :rank)

class SpanishSet
  attr_reader :suites, :ranks

  def initialize
    @suites = [:bastos, :oros, :espadas, :copas]
    @ranks = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
  end

  def new_card(suite, rank)
    Card.new(suite,rank)
  end

end
