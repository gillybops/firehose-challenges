class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end


class Deck

  def initialize
    @deck_of_cards = []
    @ranks = [:ace, 2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king]
    @suits = [:spades, :clubs, :diamonds, :hearts]
    
        @suits.each do |suit|
         @ranks.each do |rank|
           @deck_of_cards << Card.new(rank, suit)
         end
        end
  end

  def shuffle
    @deck_of_cards.shuffle!
  end

  def deal
    @deck_of_cards.shift
  end

  def output_deck
    @deck_of_cards.each do |card|
      card.output_card
    end
  end

end

deck = Deck.new
deck.shuffle
deck.deal
deck.output_deck
