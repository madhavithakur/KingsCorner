require_relative 'card'

class Deck

  # Returns an array of all 52 playing cards.
  def self.all_cards
    all_cards = []
    Card.suits.each do |suit|
      Card.values.each do |value|
        all_cards << Card.new(suit, value)
      end
    end
    all_cards
  end

  # Initializes with all 52 cards by default
  def initialize(cards = Deck.all_cards)
    @cards = cards
  end

  def count
    @cards.count
  end

  def take(n)
    raise "not enough cards" unless count >= n
    @cards.shift(n)
  end

  def deal_hand(player)
      player.take(take(7))
  end

  def empty?
    count < 1
  end
end
