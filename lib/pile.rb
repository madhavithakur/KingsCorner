require 'byebug'

class Pile
  attr_reader :corner
  attr_accessor :cards

  # Initializes as an empty regular pile by default
  def initialize(corner = false, cards = [])
    @corner = corner
    @cards = cards
  end

  def empty?
    cards.empty?
  end

  def top_card
    return nil if empty?
    cards.last
  end

  def bottom_card
    return nil if empty?
    cards.first
  end
  
  def valid_move?(card)
    if !empty?
      top_card.color != card.color && top_card.rank == card.rank + 1
    else
     # debugger
      if corner 
        card.value == :king
      else
        true
      end
    end
  end

  def move_all(to_pile)
    raise "Invalid pile move" unless to_pile.valid_move?(self.bottom_card)
    self.cards.each {|card| to_pile << card} 
    self.cards = []
  end

  def <<(card)
    cards << card
  end
end
