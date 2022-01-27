class Matrix
  attr_reader :rows, :columns

  def initialize(matrix_values)
    @rows = matrix_values.each_line.map { |line| line.split.map(&:to_i) }
    @columns = @rows.transpose
  end
end
