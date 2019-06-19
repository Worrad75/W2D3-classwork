class Card
  include Comparable

  VALS = { "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "10" => 10, "J" => 11, "Q" => 12, "K" => 13, "A" => 14 }

  attr_reader :suite, :value

  def initialize(suite, value)
    @suite = suite #a string
    @value = value #a string
  end

  def <=>(other_card)
    case (VALS[self.value] <=> VALS[other_card.value])
    when 1 return 1
    when -1 return -1
    when 0 return 0
  end

  def same_suite?(other_card)
    self.suite == other_card.suite
  end


end

# suites = ["♤", "♡", "♢", "♧"]
# values = ["2","3","4","5","6","7","8","9","10","J","Q","K","A"]