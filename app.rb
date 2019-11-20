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

# load 4 players
players = []
4.times do |n|
  hand = MusHand.new(deck)
  players << MusPlayer.new(hand, n)
end

# give 4 cards to each player, one card at a time
# you hand out the cards
4.times do
  players.each do |player|
    player.hand.take_card
  end
end

def game_value(cards)
  sum = 0
  cards.each do |card|
    sum += card.game_value
  end
  sum
end

def store_hand_values(players)
  CSV.open('mus_data.csv', 'ab') do |csv|
      players.each do |player|
        csv << [player.hand.cards, player.position, game_value(player.hand.cards)]
    end
  end
end

store_hand_values(players)
# You store the hands' values for all games
# you calculate and store the results of
# Big
# Small
# Pair
# Game
# You empty the hands
# You reset the deck
# You are ready to reset the game

