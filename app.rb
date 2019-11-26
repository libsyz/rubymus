require_relative 'lib/spanish_set'
require_relative 'lib/deck'
require_relative 'mus_player'
require_relative 'hand'
require 'csv'

# load a file to dump data into
mus_data_path = "mus_data.csv"


# load a spanish set of cards
spanish_set = SpanishSet.new

# load a deck
deck = Deck.new(spanish_set)

# shuffle the deck
deck.build
deck.shuffle

simulator = MusSimulator.new(deck)

simulator.create_players

10_000.times do
  simulator.run_game
  simulator.reset
end

class MusSimulator
  def initialize(deck)
    @deck = deck
    @players = []
  end

  def create_players
    4.times do |player_number|
      hand = MusHand.new(@deck)
      @players << MusPlayer.new(hand, player_number)
    end
  end

  def run_game
    # hand out the cards
    give_out_hands
    # calculate big winner
    big_winner = get_big_winner
    # calculate small winner
    small_winner = get_small_winner
    # calculate pair winner
    pair_winner = calculate_pair_winner
    # calculate pair winner
    game_winner = calculate_game_winner
    # throw all calculations into a some sort of result object
    # print the results into a csv
    # game should print player 1 cards
  end

  def big_winner
    max_value = players.sort { |p| p.hand.big_value }
    # get the player with the highest value
    # if that player's value is repeated, get the
    # one with the highest priority
  end

  def small_winner
    # get the player with
  end

  def reset
    @players.each { |p| p.return_all_cards }
    @deck.shuffle
  end

  private

  def give_out_hands
    4.times do
      @players.each do |player|
        player.hand.take_card
      end
    end
  end

  def method_name

  end
end



# give 4 cards to each player, one card at a time
# you hand out the cards


def game_value(cards)
  sum = 0
  cards.each do |card|
    sum += card.game_value
  end
  sum
end

# def store_hand_values(players)
#   CSV.open('mus_data.csv', 'ab') do |csv|
#       players.each do |player|
#         csv << [player.hand.cards, player.position, game_value(player.hand.cards)]
#     end
#   end
# end





