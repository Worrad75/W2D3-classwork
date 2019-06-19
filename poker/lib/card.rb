class Card
  include Comparable

  VALS = { "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "10" => 10, "J" => 11, "Q" => 12, "K" => 13, "A" => 14 }

  attr_reader :suite, :value

  def initialize(suite, value)
    @suite = suite
    @value = value
  end

  def <=>(other_card)
    (VALS[self.value] <=> VALS[other_card.value])
  end

  def same_suite?(other_card)
    self.suite == other_card.suite
  end


end