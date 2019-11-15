
Card = Struct.new(:suite, :rank) do

  def value
    return 12 if rank == 3
    return 1 if rank == 2
    rank
  end

  def game_value
    return 10 if [3, 10, 11, 12].any? { |x| x == rank }
    return 1 if rank == 2
    rank
  end
end

class SpanishSet
  attr_reader :suites, :ranks

  def initialize
    @suites = [:bastos, :oros, :espadas, :copas]
    @ranks = [1, 2, 3, 4, 5, 6, 7, 10, 11, 12]
  end

  def new_card(suite, rank)
    Card.new(suite,rank)
  end

end
