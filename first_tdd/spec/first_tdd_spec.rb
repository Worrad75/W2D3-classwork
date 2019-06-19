require 'first_tdd'
require 'rspec'

describe '#my_uniq' do
  it "returns only unique elements" do
    array = [1,2,3,1,2,3,4,5]
    expect(my_uniq(array)).to eq([1,2,3,4,5])
  end
end

describe 'Array#two_sum' do

  it "finds pairs of indexes that sum to zero" do
    array = [-1, 0, 2, -2, 1]
    expect(array.two_sum).to eq([[0, 4], [2, 3]])
  end

end

describe '#my_transpose' do
  
  it 'transposes 2D array properly' do
    array = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
    ]

    trans_arr = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
    ]

    expect(my_transpose(array)).to eq(trans_arr)
  end
end

describe '#stock_picker' do

  it 'returns a pair of indexes indicating best profit margins' do
    array = [1000, 10, 20, 30, 300, 40]
    expect(stock_picker(array)).to  eq([1,4])
  end

end