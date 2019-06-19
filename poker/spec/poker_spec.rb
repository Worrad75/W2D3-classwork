require "rspec"
require "deck"

describe "card#initialize" do
  subject(:dummy_card) { Card.new("♤", "2") }

  it "creates a new card" do
    
    expect(dummy_card.suite).to eq("♤")
    expect(dummy_card.value).to eq("2")

  end

end

describe "card#<=>" do
  subject(:dummy_1) { Card.new("♤", "4") }
  subject(:dummy_2) { Card.new("♤", "2") }
  subject(:dummy_3) { Card.new("♡", "4") }

  it "returns 1 when self is a 'larger' value" do
    expect(dummy_1<=>dummy_2).to eq(1)
  end

  it "returns 0 when self is a 'equal' value" do
    expect(dummy_1<=>dummy_3).to eq(0)
  end

  it "returns -1 when self is a 'lesser' value" do
    expect(dummy_2<=>dummy_1).to eq(-1)
  end

end

#_______________________________________________


describe "deck#initialize" do 
  subject(:dummy_deck) { Deck.new }

  it "creates a new deck of 52 cards" do
    expect(dummy_deck.cards.length).to eq(52)
  end

  it "has all unique cards" do
    mapped_suite = dummy_deck.cards.map { |card| card.suite }
    mapped_value = dummy_deck.cards.map { |card| card.value }
    zipped = mapped_suite.zip(mapped_value)

    expect(zipped.uniq).to eq(zipped)
  end
end
