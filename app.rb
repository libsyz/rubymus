require_relative 'lib/spanish_set'
require_relative 'lib/deck'
require_relative 'mus_player'
require_relative 'hand'


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
4.times do
  players.each do |player|
    player.hand.take_card
  end
end


# What kind of output would you like to get out of this
# Run the game
# running the game means that
# you build the deck
# you shuffle it
# you hand out the cards
# You store the hands' values for all games
# you calculate and store the results of
# Big
# Small
# Pair
# Game
# You empty the hands
# You reset the deck
# You are ready to reset the game

