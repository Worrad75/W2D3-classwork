def my_uniq(arr)
  new_arr = []
  arr.each { |ele| new_arr << ele if !new_arr.include?(ele)}
  new_arr
end

class Array

  def two_sum
    pairs = []
    self.each_with_index do |num1, idx1|
      (idx1 + 1... self.length).each do |idx2|
        num2 = self[idx2]
        pairs << [idx1, idx2] if num1 + num2 == 0
      end

    end
    pairs
  end

end

def my_transpose(arr)
  transposed = []
  i = 0

  while i < arr.length
    sub_trans = []
    sub_arr = arr[i]
    j = 0

    while j < sub_arr.length
      sub_trans.push(arr[j][i])
      j += 1
    end
    transposed.push(sub_trans)
    i += 1
  end
  transposed
end

def stock_picker(array)

  # counter variable to keep track of profit
  # array variable to keept track of largest profit margins
  # nested loop:
    # outer loop buying date
    # inner loop selling date


  profit = 0
  buy_sell = [nil, nil]
  array.each_with_index do |buy, b_day|

    s_day = b_day + 1
    while s_day < array.length

      sell = array[s_day]
      margin = sell - buy

      if margin > profit
        profit = margin
        buy_sell = [b_day, s_day]
      end
      s_day += 1
    end
  end
  buy_sell
end

class TowerOfHanoi

  def initialize
    @pegs = [ [1,2,3,4], [], [] ]
  end

  def get_input
    input = gets.chomp
    input
  end

  #method that moves a piece
  def move(start_peg, end_peg) #nums 0,1,2
    piece = @pegs[start_peg].shift
    @pegs[end_peg].unshift(piece)
  end


  #method valid_move?

  def valid_move?(start_peg, end_peg)

    # start_peg has discs in it
    # check if end_peg has disc
      # and if it does make sure it's larger than start_peg top-most disc

    return false if @pegs[start_peg].empty?

    if !@pegs[end_peg].empty?
      @pegs[start_peg].first < @pegs[end_peg].first
    else
      true
    end

  end

  # method won?

  def won?
    return true if @pegs[0].empty? && @pegs[1].empty?
  end

  #method render

  def render
    puts "------------"
    puts "Peg 0"
    print @pegs[0].reverse
    puts
    puts "Peg 1"
    print @pegs[1].reverse
    puts
    puts "Peg 2"
    print @pegs[2].reverse
    puts
    puts "------------"
    

  end


  #method turn
end