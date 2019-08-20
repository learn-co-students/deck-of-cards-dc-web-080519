require "pry"
class Deck
  # Construct a class for a Deck of cards, which has an attribute cards consisting of an array of 52 Card objects.
  # Your Deck should have a method #choose_card which selects a random card from the deck and removes it.
  attr_accessor :cards

  def initialize
    # prep with array of suits, ranks, and no cards in deck
    suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    self.cards = []

    # go through each suit and add one card of each rank for that suit
    suits.each do |suit|
      ranks.each do |rank|
        self.cards << Card.new(suit, rank)
      end
    end
  end

  def choose_card
    # pick a random card
    card = self.cards.sample
    # remove the card from the deck
    self.cards.delete(card)
    # return that card
    card
  end

end

###########

class Card
  # A Card consists of a rank ("A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K") paired with a suit ("Hearts", "Clubs", "Diamonds", "Spades")
  attr_accessor :rank, :suit

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end
end