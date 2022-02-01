class Squares
  attr_reader :square_of_sum, :sum_of_squares, :difference

  def initialize(number)
    @square_of_sum = (1..number).sum**2
    @sum_of_squares = (1..number).sum { |n| n**2 }
    @difference = square_of_sum - sum_of_squares
  end
end
