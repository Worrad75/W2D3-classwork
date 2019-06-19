require_relative "card"

class Deck

  attr_reader :cards

  def initialize
    @cards = []
    self.populate_deck
    self.shuffle_deck!
  end

  def populate_deck
    suites = ["♤", "♡", "♢", "♧"]
    values = ["2","3","4","5","6","7","8","9","10","J","Q","K","A"]

    suites.each do |suite|
      values.each { |value| @cards << Card.new(suite, value) }
    end
  end

  def shuffle_deck!
    @cards.shuffle!
  end
end