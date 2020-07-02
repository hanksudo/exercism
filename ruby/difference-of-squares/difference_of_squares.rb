class Squares
  attr_reader :square_of_sum, :sum_of_squares, :difference
  def initialize(number)
    seq = (1..number)
    @square_of_sum = seq.sum.pow(2)
    @sum_of_squares = seq.map { |n| n * n }.sum
    @difference = square_of_sum - sum_of_squares
  end
end
